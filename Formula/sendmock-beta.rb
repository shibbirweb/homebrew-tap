# Written by Release build for 1.5.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.5.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "d48cb9e2496c44442221fccc025909ea14957adbfeff2c40617f4a88a9bc8321"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "e28179847afe056b344feeee04bcca481193de5f28a9260b4afa2c2c69b3bf0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dabcbd4a57e80041b18419a432b7e2232e94ca29a611ed514e98d5e4eb14e1fb"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76c1f8e5efb6035566cea6993e1fc372c35f497b95d003bae5f9be36bbdf0cee"
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
