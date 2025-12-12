class GitDelorean < Formula
  desc "TUI to browse a single file's Git history"
  homepage "https://github.com/hyakt/git-delorean"
  version "0.1.1"
  license :unknown
  head "https://github.com/hyakt/git-delorean.git", branch: "main"

  on_macos do
    url "https://github.com/hyakt/git-delorean/releases/download/v0.1.1/git-delorean-0.1.1-macos-x86_64.tar.gz"
    sha256 "a6aed00bcbf69a0982b4f1733ff8aff7704b684139b2bbb03149d24f476bffac"

    def install
      bin.install "git-delorean"
    end
  end

  on_linux do
    url "https://github.com/hyakt/git-delorean/releases/download/v0.1.1/git-delorean-0.1.1-linux-x86_64.tar.gz"
    sha256 "5f21a353b2f88590f144311982008c27e9d21d360fbbb66e51003d0e895d5e73"

    def install
      bin.install "git-delorean"
    end
  end

  test do
    output = shell_output("#{bin}/git-delorean 2>&1", 1)
    assert_match "Usage: git-delorean <file>", output
  end
end
