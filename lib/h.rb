# frozen_string_literal: true

require "digest/sha2"

# H module provides secure password hashing functionality
# @example
#   builder = H::Builder.new("my-secret-salt")
#   hash = builder.call("my-password")
module H
  # Builder handles the creation of salted password hashes using SHA-256
  class Builder
    # @return [String] the secret salt used for hashing
    attr_reader :secret

    # Initialize a new Builder with a secret salt
    # @param secret [Object] the salt to use for hashing (will be converted to String)
    def initialize(secret)
      @secret = String(secret)

      freeze
    end

    # Generate a salted hash of the provided value
    # @param value [String] the value to hash
    # @return [String] Base64 encoded SHA-256 hash
    def call(value)
      ::Digest::SHA256.base64digest("#{value}++#{secret}")
    end
  end
end
