# encoding: utf-8

require_relative '_test_helper'

class HTest < MiniTest::Unit::TestCase
  def test_h
    @h = H::Generator.new('my-salt')

    assert_equal @h.input('p@ssw0rd'),    'LCoF25LqK6yFMRs6OoQoZEI4GV4-gR7vd1JZtbi8swA='
    assert_equal @h.input('p@ssw0rd', 8), 'LCoF25Lq'

    @h = H::Generator.new('塩')

    assert_equal @h.input('シークレット'),    '-q0zMnMSszj8D23a8aNJX_VYry9oSSLZ30XlHkmFt9I='
    assert_equal @h.input('シークレット', 3), '-q0'
  end
end
