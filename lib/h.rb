require 'digest/sha2'

module H
  class Builder
    attr_reader :secret

    def initialize(secret)
      @secret = secret
    end

    def call(value)
      ::Digest::SHA256.base64digest("#{value}++#{secret}")
    end
  end
end
