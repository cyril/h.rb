require_relative '_test_helper'

describe H::Generator do
  describe 'basic test' do
    before do
      @h = H::Generator.new('my-salt')
    end

    it 'returns a salted hash' do
      @h.input('', 44).must_equal 'rdOQxxmSfOy-3-HA7OrnqT2Pl2Y_I7Ojqsc1NwVP4sg='
    end

    it 'returns another salted hash' do
      @h.input('p@ssw0rd', 44).must_equal 'LCoF25LqK6yFMRs6OoQoZEI4GV4-gR7vd1' \
                                          'JZtbi8swA='
    end

    it 'returns a salted hash of 8 chars' do
      @h.input('p@ssw0rd', 8).must_equal 'LCoF25Lq'
    end
  end

  describe 'exotic test' do
    before do
      @h = H::Generator.new('塩')
    end

    it 'returns a different salted hash' do
      @h.input('p@ssw0rd', 44).wont_equal 'LCoF25LqK6yFMRs6OoQoZEI4GV4-gR7vd1' \
                                          'JZtbi8swA='
    end

    it 'returns a salted hash' do
      @h.input('シークレット', 44).must_equal '-q0zMnMSszj8D23a8aNJX_VYry9oSSLZ30Xl' \
                                        'HkmFt9I='
    end

    it 'returns a salted hash of 3 chars' do
      @h.input('シークレット', 3).must_equal '-q0'
    end
  end
end
