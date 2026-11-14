# Written by Release build for 1.0.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "d0809fdcafdcab2eb89afd54055ba1457204f2967f463d0cc84bec7cf4914a11"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "38b63c0b56881ad60693d862d5dbbc8900e56c4ab2467e35c7cf209230307838"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "648d850ec829f43b2b0b3176774b04f91356c705edf6af83008e004498e5fd22"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.0.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74bb0cb4ba252d5999146025d68a960de1ce1623667943d9aa4ade458f985c2c"
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
