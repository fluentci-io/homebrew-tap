class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.6/fluentci_v0.17.6_aarch64-apple-darwin.tar.gz"
  sha256 "bee7f8ab27904ffc88f4f64d9e333c7c61ad235b57770a99ccaf51820b610a25"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.6/fluentci_v0.17.6_x86_64-apple-darwin.tar.gz"
    sha256 "f4d3e3b7dcac44c432e03178ab888bfb5d90de8f3d187242993bb56014c9860b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.6/fluentci_v0.17.6_aarch64-apple-darwin.tar.gz"
    sha256 "bee7f8ab27904ffc88f4f64d9e333c7c61ad235b57770a99ccaf51820b610a25"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.6/fluentci_v0.17.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "769849d75d60c5e585f0c194de2f68fc7d08ace2b4c421e04fa3423cd1b75979"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.6/fluentci_v0.17.6_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2ef3d3147bf2bb86a3323234a67e6e583b25300ce02d33d83ca22e3031d4fabb"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
