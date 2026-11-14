# Written by Release build for 0.1.0-beta.4; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "0.1.0-beta.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.4/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "da125bfe25d5d1b0b6f7aad5736bfc69231a893fd964799a9bc26779ca57eace"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.4/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "c51370b9caf1d3ce4db47eefd0b014a5fca753ca58bcf854f2c1dd9db89e0446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.4/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0a9333c7e441ad4637ccc5528f42e9e16fcf3430f04a616870952ab7143a404"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.4/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85aefe4663329c0136698b93b6ac6ee0a6ac1276c37ecb546cf0cf687a79744a"
    end
  end

  conflicts_with "sendmock", because: "both install a `sendmock` binary"

  def install
    bin.install "sendmock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sendmock version")
  end
end
