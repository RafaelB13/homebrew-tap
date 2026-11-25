# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.0/agentport_v0.1.0_darwin_arm64.tar.gz"
      sha256 "1f915ccd1bdf615b72c25b48666d8e189035595d7a4dfac64c5430b962bce560"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.0/agentport_v0.1.0_darwin_amd64.tar.gz"
      sha256 "ca235f9b1323b8eda4fcb74ef468036fc734c7bf9d2a316a0e6ae7ceea7dbddd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.0/agentport_v0.1.0_linux_arm64.tar.gz"
      sha256 "9ca7e401f3dd1ac5d4392f92104eef2da6ff652a3ea4078bfaf2b6a12c3ac134"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.0/agentport_v0.1.0_linux_amd64.tar.gz"
      sha256 "34aaaa1f0068d9b80926fbe8a1ba8142a4d91d2ba7cd851f28825a5f5ae34c20"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
