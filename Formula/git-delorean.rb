class GitDelorean < Formula
  desc "TUI to browse a single file's Git history"
  homepage "https://github.com/hyakt/git-delorean"
  version "0.1.0"
  license :unknown
  head "https://github.com/hyakt/git-delorean.git", branch: "main"

  on_macos do
    url "https://github.com/hyakt/git-delorean/releases/download/v0.1.0/git-delorean-0.1.0-macos-x86_64.tar.gz"
    sha256 "1bc60cde0ef1897f9c8dccf51c0540e4a16214fe2a9c570e93e7a5a8fc6bd88f"

    def install
      bin.install "git-delorean"
    end
  end

  on_linux do
    url "https://github.com/hyakt/git-delorean/releases/download/v0.1.0/git-delorean-0.1.0-linux-x86_64.tar.gz"
    sha256 "c826cc2f1da79c565dc3090b0625e647fee1d5015c2de9c148237b76a55f5509"

    def install
      bin.install "git-delorean"
    end
  end

  test do
    output = shell_output("#{bin}/git-delorean 2>&1", 1)
    assert_match "Usage: git-delorean <file>", output
  end
end
