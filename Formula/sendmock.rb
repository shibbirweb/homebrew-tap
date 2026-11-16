# Written by Release build for 1.1.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "65a593e897ca520cfbbb9064a93cc3ea8e8924963dd7ddc9bffdd27e04d24d0b"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "283f0c72c8a45b6888d497d3e27ad3529c4147c03b28837fddcf60761c9bcd79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "372ffae6275c5a3745373f1a103f521a4a76ff246e1c38ae1cad0cc4f8853c1c"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b6b26b03d6f8a370e622c315f6bbaf3569ac1b751e0ae904c0879344ebf2e7e"
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
