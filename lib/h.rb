require 'digest'

# Namespace and main entry point for the H library.
module H
  # Class that generates cryptographic hash
  class Generator
    # Initialize a H instance.
    #
    # @param static_key [String] a random data
    #
    # @return [H::Generator] instance
    #
    def initialize(static_key)
      @static_key = static_key
    end

    # Return a hash of +l+ length.
    #
    # @param m [String] a message
    # @param l [Fixnum] the length of the returned string
    #
    # @return [String] salted cryptographic hash.
    #
    # @api public
    def input(m, l)
      m += @static_key
      d = cryptographic_hash(m)
      truncate d, l
    end

    protected

    # Build a hash from +m+ message.
    #
    # @param m [String] a message
    #
    # @return [String] cryptographic hash.
    #
    # @api private
    def cryptographic_hash(m)
      ::Digest::SHA256.base64digest(m).tr('+/', '-_')
    end

    # Truncate the given string from +lng+ param.
    #
    # @param str [String] a string to truncate
    # @param lng [Fixnum] the length of the truncated string
    #
    # @return [String] truncated string.
    #
    # @api private
    def truncate(str, lng)
      str[0, lng]
    end
  end
end
