class Autofix < Formula
  desc "Behavioral attestation and AI-powered fixes for agent tools"
  homepage "https://github.com/trustabl/autofix"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/trustabl/autofix/releases/download/v0.1.0/autofix_0.1.0_darwin_arm64.tar.gz"
      sha256 "77133817cef20d4353caa61d2af7c6b0287c3d55b918c70cdf275c2f8ac5f7fd"
    end
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.1.0/autofix_0.1.0_darwin_amd64.tar.gz"
      sha256 "ce461c6c1af4e7bbbb810947e483afc4c86f722288542d8ce0bb267d098f380d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trustabl/autofix/releases/download/v0.1.0/autofix_0.1.0_linux_amd64.tar.gz"
      sha256 "98805e9d4e4044db9f4d7b33be10c67dc28282454633836830fe3c7ae3d0267e"
    end
  end

  def install
    bin.install "autofix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/autofix version")
  end
end
