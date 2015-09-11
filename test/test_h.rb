require_relative '_test_helper'

Fix.describe H::Generator do
  # basic test
  on :new, 'my-salt' do
    # returns a salted hash
    on :input, '', 44 do
      it { MUST Eql: 'rdOQxxmSfOy-3-HA7OrnqT2Pl2Y_I7Ojqsc1NwVP4sg=' }
    end

    # returns another salted hash
    on :input, 'p@ssw0rd', 44 do
      it { MUST Eql: 'LCoF25LqK6yFMRs6OoQoZEI4GV4-gR7vd1JZtbi8swA=' }
    end

    # returns a salted hash of 8 chars
    on :input, 'p@ssw0rd', 8 do
      it { MUST Eql: 'LCoF25Lq' }
    end
  end

  # exotic test
  on :new, '塩' do
    # returns a different salted hash
    on :input, 'p@ssw0rd', 44 do
      it { MUST_NOT Eql: 'LCoF25LqK6yFMRs6OoQoZEI4GV4-gR7vd1JZtbi8swA=' }
    end

    # returns a salted hash
    on :input, 'シークレット', 44 do
      it { MUST Eql: '-q0zMnMSszj8D23a8aNJX_VYry9oSSLZ30XlHkmFt9I=' }
    end

    # returns a salted hash of 3 chars
    on :input, 'シークレット', 3 do
      it { MUST Eql: '-q0' }
    end
  end
end
