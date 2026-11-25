# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.2/agentport_v0.1.2_darwin_arm64.tar.gz"
      sha256 "7f6b3bd29a8cb36f7b5dfda282a0ac45c6bc0a172a9262da4b4c994386572ef0"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.2/agentport_v0.1.2_darwin_amd64.tar.gz"
      sha256 "d5ed54ee6f1ac1e7894b99274ffb13d05c10f4994a20eb8453aace5fb1855c75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.2/agentport_v0.1.2_linux_arm64.tar.gz"
      sha256 "7e4c648c9eab9fda3d74d8610995902df3e2d967159eb02eac0b2d64a32dcaab"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.2/agentport_v0.1.2_linux_amd64.tar.gz"
      sha256 "8858ca2edea7b4416a67a22ad1496cb203932740f72166ceb4ca70ef681cd5b3"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
