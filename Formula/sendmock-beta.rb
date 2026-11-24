# Written by Release build for 1.6.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.6.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "76fa171dd3eecc960ce55e008d2b9b0ece59b5f6df5ca8de79751b879c443aaf"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "8c74cdc2a7089448ff311d4693753889002296213df4388a28a337ef49be3ff1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "35482676e58559a68efb8b8eaa37c1932e14cfc434f209212e2091cf6ecabb3b"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.6.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e29fed793b4e9e0af2b474a0b3b1b17d190348f36fe93b7a1e138b9ee59825ff"
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
