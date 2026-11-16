# Written by Release build for 1.1.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.1.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "ee8be2c81c39acdb5c3882147ee936a13897514118574e829b8b87a7ec414bd8"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "1a31bd2ef7be4cd1dd7017092476514cbf5340d6004a557368d0557b3f983314"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2682de3848b785dc634511e35c09428d207c08530e00e51993b90519bb28c086"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.1.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ff75c16f6850bcb954c2a21ea6bc0ac7f696f9cd68b284003bb740911d83c74"
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
