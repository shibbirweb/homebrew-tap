# Written by Release build for 1.4.1; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "46c43e959ea49ff79f73392635e49a97b8f543cd2d34e88c7dacc71f67071fa9"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "c2b5f7c1179ef2d93b62544bccdb760c0d56564646e28e47421da4ee701a63da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e826ecfd03731a818cd0c1e8c7eddeccdfd85866704d1736a65c807294db4bb"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fff749d153e1fb2773ef1973d9d9332a7039f1bf078f47415183caa12ef0cce9"
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
