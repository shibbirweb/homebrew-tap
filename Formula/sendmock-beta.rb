# Written by Release build for 0.1.0-beta.2; changes here are overwritten.
class SendmockBeta < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "0.1.0-beta.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.2/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "1a28c41b97cbe0d0faf13ccb427a42249cebb52be27805c4c7382fc2018bf09c"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.2/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "1903de5c785162501b89403cfe16e553d269aa80cf399abfbd7ed46028fcd221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.2/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70572372797751f9e18f6e8383baba4e7c78cd6ca7b6fb1ad8df7c7d0be0ed8a"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v0.1.0-beta.2/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc9653a2d6a9216846a7248c6a2d67bf35684eca6934de7a9fcc468890b287db"
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
