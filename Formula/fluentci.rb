class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.0/fluentci_v0.15.0_aarch64-apple-darwin.tar.gz"
  sha256 "e24f92738d3578ebcc6c1c79501f0395ae51d8e6b7ca59078f6203ae7a3533eb"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.0/fluentci_v0.15.0_x86_64-apple-darwin.tar.gz"
    sha256 "6f7ba6c956e759b461f7d4471a2e040f9c7b80c096c61fd9149c9f808553fb87"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.0/fluentci_v0.15.0_aarch64-apple-darwin.tar.gz"
    sha256 "e24f92738d3578ebcc6c1c79501f0395ae51d8e6b7ca59078f6203ae7a3533eb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.0/fluentci_v0.15.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40dbfa4435f030cabd1307ea0db4601efe3f6ae4f1fd976a540375c1072d7c4e"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
