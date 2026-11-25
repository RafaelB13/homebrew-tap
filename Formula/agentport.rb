# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.3/agentport_v0.1.3_darwin_arm64.tar.gz"
      sha256 "2cd0765e706289cb24f00932f952834410c8f9e48d0ba3592309407c0cf775d6"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.3/agentport_v0.1.3_darwin_amd64.tar.gz"
      sha256 "68ad5cc8545b1a7433ea484d78929582fbfba7934a1487159a1a91d61790537d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.3/agentport_v0.1.3_linux_arm64.tar.gz"
      sha256 "218b670cc2a893c7cafb0e4aa0780f76869f564c9f36c843ee3206eeade1f3c1"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.3/agentport_v0.1.3_linux_amd64.tar.gz"
      sha256 "ba2cd155999f808ee043f80318ca8a1f1c8c6b78bc38490cabde5af472d361fa"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
