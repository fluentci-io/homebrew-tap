class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.10.7/fluentci_v0.10.7_aarch64-apple-darwin.tar.gz"
  sha256 "78ba3f1601034a3f8cdc5c47f0a70caf2c99700e9e5067bd19873beee2657c55"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.10.7/fluentci_v0.10.7_x86_64-apple-darwin.tar.gz"
    sha256 "18e6017296fc4e2a6549a05c5d1f82efc056465abb956fdae2d3b86f2bc1d66e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.10.7/fluentci_v0.10.7_aarch64-apple-darwin.tar.gz"
    sha256 "78ba3f1601034a3f8cdc5c47f0a70caf2c99700e9e5067bd19873beee2657c55"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.10.7/fluentci_v0.10.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9739ea06e9a0b051d4d9dea243f46b353c4a89467d8ce4e6e57aed4031a5ce93"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
