# Written by Release build for 0.1.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "0.1.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "cc546001b0d64bfd2cc086f19359a5a6100afc63f0e74d503abea144dd212e6e"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "758084683431195c3d5e43fb7c296bbcb704343891a98504a9032611277ca416"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "172063b19edc4d60492101429381a2cffd9d82c35cef7dac199b7a112dbbaec6"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c0eb3c2fdcf6ac30259f8f1fe176e0752d14ad0c47f140f8474a0c67703bd29"
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
