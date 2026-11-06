class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.0/fluentci_v0.17.0_aarch64-apple-darwin.tar.gz"
  sha256 "517a6bc3a53729e2e9e208429e04dd2f7a0dc04eb6aa6493f63f514259c34627"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.0/fluentci_v0.17.0_x86_64-apple-darwin.tar.gz"
    sha256 "6ba0d116ddc51b90c0836e9dd52cbe41960bc1f201d3ec312f762912be8ddfa0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.0/fluentci_v0.17.0_aarch64-apple-darwin.tar.gz"
    sha256 "517a6bc3a53729e2e9e208429e04dd2f7a0dc04eb6aa6493f63f514259c34627"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.0/fluentci_v0.17.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3226931bdde66d3e5fec9a4cf447828928e25e839b885c60d4fec44bcf39afb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.0/fluentci_v0.17.0_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3a1b9c67d4948065df068b0abd48ca6c1146589b79221d4bd507603362fe6cea"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
