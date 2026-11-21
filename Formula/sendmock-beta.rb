# Written by Release build for 1.3.1-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.3.1-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "d0349a0ffd8fc620a08260020dd260fc2535d2e2897dd897a110daf87826f3fd"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "f2bd697617f696cb7498289ac9d93433e79da6879e0dc60ad702defa5c6fea74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bddcecaa930e4e061d85e2f19da3f91ad8173783c52d3e8192bfdaf4af6dcb43"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d91c893bafb4c0e02e184c00eab1b61d2fef1a84c9edaae4982629820ff1c1d"
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
