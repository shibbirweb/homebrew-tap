# Written by Release build for 1.0.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.0.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "0a448cf3f64a920f94f467111d99d0d6513fe076593cb572e4805b182a94430a"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "9706dd54c0c7ff3e4b027b257a9754578dd0255338e3da7f02d50e25ac8cfb7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6e0d5914b3edc085884442684ef3404940c9e950a487233115723d5b2456d40"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "050281d38966bbf086ef03fedf288aee9b26ebdb95cc4448c40884fb56786751"
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
