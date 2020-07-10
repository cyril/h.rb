# frozen_string_literal: true

require 'digest/sha2'

# H module.
module H
  # Builder class.
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
