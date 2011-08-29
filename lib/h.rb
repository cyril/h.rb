require 'digest'
require 'highline/import'
require 'yaml'

module H
  class Generator
    CONF_PATH = File.join(File.expand_path('~'), '.h')

    def initialize(options = {})
      unless File.exists?(CONF_PATH)
        File.open(CONF_PATH, 'w') do |f|
          YAML.dump({ 'encryption' => 'SHA1',
                      'static_key' => 'foobar',
                      'max_length' => 15,
                      'radix'      => 36 }, f)
        end

        File.chmod(0600, CONF_PATH)
      end

      @params = YAML.load_file(CONF_PATH)
      @params.update(options)
      @params.freeze
    end

    def input(message)
      m = message + @params['static_key']
      d = cryptographic_hash(m)
      truncate codage(d)
    end

    def prompt
      input ask('Message: ') {|q| q.echo = '*' }
    end

    protected

    def codage(hexdigest)
      hexdigest.to_i(16).to_s(@params['radix'])
    end

    def cryptographic_hash(message)
      Digest.class_eval(@params['encryption']).hexdigest(message)
    end

    def truncate(string)
      string[0, @params['max_length']]
    end
  end
end
