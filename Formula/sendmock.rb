# Written by Release build for 1.2.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "693853dadc25cb6a800cadbf56b7db825f9011086e81e6decc11e6c1700e85a8"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "617dfb615345d5e93f5a0763afbf983a4c2802f4dbc09bbb125617d8857370ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22f0bea5bb1a79c895e96f0290d289f7c260d5411663f4436926a32a94172d51"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.2.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3b39ac1d56596e1ebbe1bc2e0fdb9f758de072e82160704704373d39dc215b9"
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
