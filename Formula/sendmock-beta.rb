# Written by Release build for 1.3.1-beta.2; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.3.1-beta.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.2/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "c2d9456e57d6589aa71fd9eec7869f35821f5a801117d6b00ac6327a47ef5bda"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.2/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "c81ac3859b79713b03b348722fc4dcc92c654591bd2f5b3b424aa2bf380137ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.2/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d647f55e6a4176622118e2a63edbd4e2010c36df05e4cbdedd45e548d959159"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.2/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61bb3ae947875f769f458268909ed66aae09d3d6d0583a25eee255f242d2a494"
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
