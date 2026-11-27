# typed: strict
# frozen_string_literal: true

# Homebrew formula for agentport, published in the rafaelb13/homebrew-tap tap.
# Rendered by scripts/render-homebrew-formula.sh from the release checksums.txt.
class Agentport < Formula
  desc "Let a coding agent use your machine's ports over SSH, with approval"
  homepage "https://github.com/rafaelb13/agentport"
  version "0.1.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.5/agentport_v0.1.5_darwin_arm64.tar.gz"
      sha256 "90ab725bb950d46a33f7d5bf2c231dae0db099220101c86cb39e2f97df22b2ed"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.5/agentport_v0.1.5_darwin_amd64.tar.gz"
      sha256 "709587441e046502ac83e4aa3a6604b53c0d88a32cf4366332d28a970fb6e7be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.5/agentport_v0.1.5_linux_arm64.tar.gz"
      sha256 "f5752c8dec3458b9faa760e850fa13fe5256a32eb267e9a1512ef42d32a9e68e"
    else
      url "https://github.com/rafaelb13/agentport/releases/download/v0.1.5/agentport_v0.1.5_linux_amd64.tar.gz"
      sha256 "e7248cbb78e45e785f811f6a689d2605581e849b6064755a5b5fae45c2c8b937"
    end
  end

  def install
    bin.install "agentport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentport version")
  end
end
