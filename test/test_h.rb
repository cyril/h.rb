require_relative '_test_helper'

class HTest < MiniTest::Unit::TestCase
  def setup
    @h = H::Generator.new
  end

  def test_h
    assert_equal @h.input('p@ssw0rd'),    'SdsRrcHHSpJvfhkPM8Np047CocaWRQ2nzPYEw9qWYIo='
    assert_equal @h.input('p@ssw0rd', 8), 'SdsRrcHH'
  end
end
