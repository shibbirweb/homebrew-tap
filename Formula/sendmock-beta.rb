# Written by Release build for 1.4.1-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.4.1-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "3bcd3af7ef8672ba5cf2a4b074a8ca869382fb476714ade8bf95cc474292cf51"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "b00f6c58e424845e81afbc53ed1433bcb0053e1461aaafa13ae7931b8b5a12da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d81f2eded38496904650325664db8e329eb8805ca57b1f3959354f2eb85614f3"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.1-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7faa5a1af3196b02970c3ce91a5f8d5531ca7a2b74fe8dafc0b170995bc5e7ad"
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
