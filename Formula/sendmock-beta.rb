# Written by Release build for 0.1.0-beta.3; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "0.1.0-beta.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.3/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "bbff0a039db5d95007672f9aba70e2ef43593124959b14e774aba63997b048bc"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.3/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "765ee206f01fa5b45f0c911a345ef7b47bb1e25e19c9af2ed1956d11849922d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.3/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50cdf79961192f10af9ab9f99b654ebccab433d8f5c716e7ae6afb496208799b"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.3/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e34aaf7100ff9135b66f0e1558c54e6aa406d85b075d567137c37d3870632b33"
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
