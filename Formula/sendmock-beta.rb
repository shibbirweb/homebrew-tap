# Written by Release build for 1.2.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.2.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "6221058eb05dd8359a4a0a0d850faf9b1dfe73c5218b870a6ab5f124a5f41110"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "a9af6166e1014b27894b19fb1931fde3ec9cccdd9b27065f661529d6a3bd18af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a121946a9a6f61096c10e0f74e573a0187dffd191427fb496a23ac821060aefb"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a9d1c7573616005c64a63a7809ee1550254fa4cd5b66e7ed97d465df277ba34"
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
