# Written by Release build for 1.4.0-beta.1; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.4.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0-beta.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "1e3b430944425e540bd1c3f5b6a9a6496093a7f1f36dc3b5cdb677ea9697929c"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0-beta.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "973bf1668a10fe6c69cba340a6397e8807374cab451e5687ba391e3a7a64b151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0-beta.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "930b91cf95439587cbee2877884bd5945e99858d18aaffa9adc6024a3cd5c12e"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0-beta.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eac08d10cf584c7c637e270fe566196a6b01dd793f7796b21103db589aff317b"
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
