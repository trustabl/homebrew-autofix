class Autofix < Formula
  desc "Behavioral attestation and AI-powered fixes for agent tools"
  homepage "https://github.com/trustabl/autofix"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_darwin_arm64.tar.gz"
      sha256 "3f5b7293f999d463b568f2562b06c40008a849c24e050132bdef7935837092ce"
    end
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_darwin_amd64.tar.gz"
      sha256 "a0d3275561b490746065c1d213bc92dd61e408f7001800e8a9b90ed4eda131ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_linux_amd64.tar.gz"
      sha256 "43cfd6de9236b924a20ecc048c6c2e736ff364059fe9b4b907d61fc766935459"
    end
  end

  def install
    bin.install "autofix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/autofix version")
  end
end
