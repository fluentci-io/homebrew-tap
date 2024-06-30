class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.1/fluentci_v0.15.1_aarch64-apple-darwin.tar.gz"
  sha256 "64255ab7a4aa2fc18f1beb62a89bc73b489c92a78333609d38c9282ece6664eb"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.1/fluentci_v0.15.1_x86_64-apple-darwin.tar.gz"
    sha256 "01c430d4afad2ae297bac8acafd248e068175962556e837791d5e617f14460cf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.1/fluentci_v0.15.1_aarch64-apple-darwin.tar.gz"
    sha256 "64255ab7a4aa2fc18f1beb62a89bc73b489c92a78333609d38c9282ece6664eb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.1/fluentci_v0.15.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ee7e2821c6b79aead25c162337cc1d2147b0f61359100b90ac9f876c554e968"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
