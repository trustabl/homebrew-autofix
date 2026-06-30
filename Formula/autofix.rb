class Autofix < Formula
  desc "Behavioral attestation and AI-powered fixes for agent tools"
  homepage "https://github.com/trustabl/autofix"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_darwin_arm64.tar.gz"
      sha256 "a761ead0ab9189739bbc20b26393bb6641d5b292620f7fda4ffab1901286dc7e"
    end
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_darwin_amd64.tar.gz"
      sha256 "3208255c214671162ef8c180120abbc77e434a28101cc38ceb1cc3ca88bb94eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.2.0/autofix_0.2.0_linux_amd64.tar.gz"
      sha256 "b26b51bf517e6275a48be645d170cf1a571e5c1133e93abb67c082e6a4324763"
    end
  end

  def install
    bin.install "autofix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/autofix version")
  end
end
