class Catsay < Formula
  desc "Like cowsay, but it's a cat — and it reads files directly, like cat"
  homepage "https://github.com/LiTLiTschi/catsay"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LiTLiTschi/catsay/releases/download/v1.0.0/catsay-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/LiTLiTschi/catsay/releases/download/v1.0.0/catsay-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LiTLiTschi/catsay/releases/download/v1.0.0/catsay-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/LiTLiTschi/catsay/releases/download/v1.0.0/catsay-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "catsay"
  end

  test do
    assert_match "meow", shell_output("#{bin}/catsay -s meow")
  end
end
