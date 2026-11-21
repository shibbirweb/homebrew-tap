# Written by Release build for 1.3.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "776d5557d5f30b1eb2c0a4f76cc5a87f5c285576d098f844fdb4f3ec5fc51e71"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "f023ad913b3184e4c19336010a72c27fc74e62cf8da89f9d0066bf4c7ac4345a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cfe010d0f97e8ece002cd36eb2d4f9329660ab2e46706ed8c6214a23df4151d5"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83af268fb118fcd974e2a9bbe6105d63715a9fa3e119f61a248ad74821470ab0"
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
