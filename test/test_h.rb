require_relative '_test_helper'

Fix.describe H::Builder do
  on :new, 'my-secret' do
    on :call, nil do
      it { MUST eql '186ef76e9d6a723ecb570d4d9c287487d001e5d35f7ed4a313350a407950318e' }
    end

    on :call, 'p@ssw0rd' do
      it { MUST eql 'ff665753fe1d26bd6a721760fe3b6623568a9c51962d6bfc9b7fc73d1f1c14d5' }
    end

    on :call, 'シークレット' do
      it { MUST eql '069f550ba39da8f87b0229ad5e3d75814c472b1c5a109ff236f9184f49fb3a25' }
    end
  end

  on :new, nil do
    on :call, nil do
      it { MUST eql 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' }
    end

    on :call, 'p@ssw0rd' do
      it { MUST eql 'a075d17f3d453073853f813838c15b8023b8c487038436354fe599c3942e1f95' }
    end

    on :call, 'シークレット' do
      it { MUST eql '2f1a3e825632d6d5c2085839b7d82e38d9e7435d5cafb1d38801db87335ba0dd' }
    end
  end
end
