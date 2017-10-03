require 'digest/sha2'

module H
  class Builder
    attr_reader :secret

    def initialize(secret)
      @secret = secret.to_s
    end

    def call(value)
      ::Digest::SHA256.hexdigest(salt(value.to_s))
    end

    private

    def salt(value)
      value + secret
    end
  end
end
