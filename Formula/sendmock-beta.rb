# Written by Release build for 1.3.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.3.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "2435cb609839695eccb934e5c1427add604870d8733b09b7b36fff3a6b9c363f"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "712591b5d7eff4d9b1d160f9897ffe175c0e4523ac327e61e9ae7848ba5c09c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6ef0aa922aca9bedaa6c4f76614d6986d6067c2b7cc3c1c72121b797e47810d"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c56181f6f1cb0321da5ef2f28c401586e22ad64cef82dd9ed6dfadf7f4abf35"
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
