# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.1/agentport_v0.1.1_darwin_arm64.tar.gz"
      sha256 "e8c5781d4a38f0d92140519715abf41548689237db55af534d4ab9efa85b5030"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.1/agentport_v0.1.1_darwin_amd64.tar.gz"
      sha256 "0cbffac13045c7ea0c8a5ded01c5dceebb012798578dfae8437d90beb835fbd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.1/agentport_v0.1.1_linux_arm64.tar.gz"
      sha256 "02e2796f6b00e7c2292cc3bd2e8aed094b2650fca83f04e6e8f8141dc16debdf"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.1/agentport_v0.1.1_linux_amd64.tar.gz"
      sha256 "a17af48c8ec504e8317d3a09e6d011001d1bd09c9940a15269d3cb1759bcc95c"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
