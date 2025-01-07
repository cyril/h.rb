# frozen_string_literal: true

require_relative '_test_helper'

Fix[:H].test do
  require_relative '../lib/h'

  ::H::Builder
end
