class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.3/fluentci_v0.16.3_aarch64-apple-darwin.tar.gz"
  sha256 "a23ae92935de08ecb9768bd5bdaf1258f0822e65d00d559da177ba525a79a8cf"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.3/fluentci_v0.16.3_x86_64-apple-darwin.tar.gz"
    sha256 "6c6e260d97ceea45ebe143b169fb2414c032373357af64854d805172aecce691"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.3/fluentci_v0.16.3_aarch64-apple-darwin.tar.gz"
    sha256 "a23ae92935de08ecb9768bd5bdaf1258f0822e65d00d559da177ba525a79a8cf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.3/fluentci_v0.16.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "465f960c5160a56dc3168f40b58d5b2618edf190bf4992e2b62000ad3831f288"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
