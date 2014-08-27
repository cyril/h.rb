require 'highline/import'
require 'digest'

# Namespace and main entry point for the H library.
module H

  # Class that generates cryptographic hash
  class Generator
    CONF_PATH = File.join(File.expand_path('~'), '.h')

    # Initialize object
    #
    # @param [String] static_key
    #
    def initialize(static_key = nil)
      @static_key = if static_key
        static_key
      else
        unless File.exists?(CONF_PATH)
          print "Creating #{CONF_PATH} file... "

          File.open(CONF_PATH, 'w') do |f|
            f.write('secret')
          end

          File.chmod(0600, CONF_PATH)

          puts "Done."
        end

        File.open(CONF_PATH).readlines.first.chomp
      end
    end

    # Return a hash
    def prompt
      input ask('Message: ') {|q| q.echo = '*' }
    end

    # Return a hash
    def input(m, l = 44)
      m = m + @static_key
      d = cryptographic_hash(m)
      truncate d, l
    end

    protected

    # Build a hash from +m+ message
    def cryptographic_hash(m)
      Digest::SHA256.base64digest(m).tr('+/', '-_')
    end

    # Truncate the given string from +lng+ param
    def truncate(str, lng)
      str[0, lng]
    end
  end # class Generator
end # module H
