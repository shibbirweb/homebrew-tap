# Written by Release build for 1.4.0; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "bbfc4b9809bb199de0a9d0991b1fdf4ee1592ef8ef08001a3f92aea79df4b51b"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "05a04059ed8ef126d994a02deb8cbb0f9d6afabf15bed2fe043e9205885ad84d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66ba159c4cba8e5849e23e88ba056906ff6fa6979e5e1fc303add6b996e54879"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.4.0/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d43148f93baca89dd519c6740a0c0c1d3064f38579162978d11f2864ee61f12e"
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
