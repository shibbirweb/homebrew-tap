# Written by Release build for 1.5.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "9c5a74398f53153fd7805fe507b364eb50e1e7970c303e9a8cc91e6986578df4"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "b1a3888d48789b5dd2399116ad908975f67a4a7a4baa67053759a719727343bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "276badd3e9959d27691eb78fa0a2b8ea72f2b60b5ce994838b0318cab6bf6ecb"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.5.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9632734e6b71e3caa0e3036733ae86087af5a42c96a162b5dc9e1780bb96efd"
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
