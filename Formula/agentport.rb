# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.4/agentport_v0.1.4_darwin_arm64.tar.gz"
      sha256 "a74f5c52153e7637fa28443a0de9986840be367cc35ee3042cf3e5b8e3b580a4"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.4/agentport_v0.1.4_darwin_amd64.tar.gz"
      sha256 "460035f2f21056c69543453456d1036b5cfd449a71f09ea0153d64b99bd7bec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.4/agentport_v0.1.4_linux_arm64.tar.gz"
      sha256 "81fb1cba6cb8cac32dbb00e4050bd81f23b2ba619901fac5d88e3f233e2d93c3"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.4/agentport_v0.1.4_linux_amd64.tar.gz"
      sha256 "d674fbc208dd16a7c092f4b1a4665c59b96ee7cbe084d94fe51a36db9fd9db77"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
