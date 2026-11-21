# Written by Release build for 1.3.1; changes here are overwritten.
class Sendmock < Formula
  desc "Catch email, SMS, payments and webhooks from any app on your machine"
  homepage "https://github.com/shibbirweb/sendmock"
  version "1.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1/sendmock-aarch64-apple-darwin.tar.gz"
      sha256 "45fd94b40aee28b54c1446540aaa1819bc184394b982d36ad21b263bcd6ae842"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1/sendmock-x86_64-apple-darwin.tar.gz"
      sha256 "8e48cccdace49fa206fdd25ef420de1fcd59b153653d2e4439a9e18fdda2c9fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1/sendmock-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fb0669272096223343973c98b85f4a255c284467dbc2b186462a583aab5baec"
    end
    on_intel do
      url "https://github.com/shibbirweb/sendmock/releases/download/v1.3.1/sendmock-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12b8bac68651d9c2fd0cf8db6a1b63b77735b96d0832aab218c4a7711bba2286"
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
