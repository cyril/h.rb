require_relative '_test_helper'

Fix.describe H::Builder do
  on :new, 'my-secret' do
    on :call, nil do
      it { MUST eql 'NKLNPIzInF96PBmMCqZR1jFaIoHn9c1y0n8jtMam4cs=' }
    end

    on :call, 'p@ssw0rd' do
      it { MUST eql '+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=' }
    end

    on :call, 'シークレット' do
      it { MUST eql 'NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU=' }
    end
  end

  on :new, nil do
    on :call, nil do
      it { MUST eql 'z8DAYHozgPeXU0azDBSvgoT1ST2XgbDthH9JnwG0do4=' }
    end

    on :call, 'p@ssw0rd' do
      it { MUST eql 'M1YbuYA4RzKHPYXaUm/GH49wLTA8JOu4WCGbt8QVOrE=' }
    end

    on :call, 'シークレット' do
      it { MUST eql 'jBU9DIODvHm1tTS7LHHJ1fM/SD3dIgwbYs8sXQkttJw=' }
    end
  end
end
