require 'rubygems'
require 'bundler'

Bundler.require

require 'highline/import'
require 'digest'
require 'dotenv'
Dotenv.load

module H
  class Generator
    def prompt
      input ask('Message: ') {|q| q.echo = '*' }
    end

    def input(m, l = 44)
      m = m + ENV.fetch('STATIC_KEY')
      d = cryptographic_hash(m)
      truncate d, l
    end

    protected

    def cryptographic_hash(message)
      Digest::SHA2.base64digest(message).tr('+/', '-_')
    end

    def truncate(string, length)
      string[0, length]
    end
  end
end
