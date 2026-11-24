# Written by Release build for 1.6.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "b4cca6bdf229872f4899827e3a79dca104a6cb52f417038d73924dcdd2d9070a"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "aad8802fedac5d0a86b3d3c530ad8ba5d9020e9034b15f1070c33a489823a58b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72520dbd5a26da5ee9b79b31a52149377f95ffbc2a164470f00c9567a469c30e"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f08ba2f69996ad6b7c148bfccf1837ffe20f8cffcaeb030aecd8553838806f9"
    end
  end

  conflicts_with "sendmock-beta", because: "both install a `sendmock` binary"

  def install
    bin.install "sendmock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sendmock version")
  end
end
