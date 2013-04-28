require_relative '_test_helper'

class HTest < MiniTest::Unit::TestCase
  def setup
    @h = H::Generator.new({ 'encryption' => 'SHA1',
                            'static_key' => 'foobar',
                            'max_length' => 15,
                            'radix'      => 36 })
    @my_h = H::Generator.new({ 'encryption' => 'SHA2',
                               'static_key' => 'sun',
                               'max_length' => 15,
                               'radix'      => 36 })
    @sha1 = H::Generator.new({ 'encryption' => 'SHA1',
                               'static_key' => '',
                               'max_length' => 40,
                               'radix'      => 16 })
  end

  def test_h
    assert_equal    @h.input('secret'), 't3dpe24xie3y74t'
    assert_equal @my_h.input('secret'), '5gumh4smv1iit23'
    assert_equal @sha1.input('The quick brown fox jumps over the lazy dog'),
      '2fd4e1c67a2d28fced849ee1bb76e7391b93eb12'
  end
end
