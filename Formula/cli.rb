class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.9/fluentci_v0.12.9_aarch64-apple-darwin.tar.gz"
  sha256 "f50c6e632d33b1f87f22a2cdf2c9ec87458ba1b71dd6cc93341c317eb92a343d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.9/fluentci_v0.12.9_x86_64-apple-darwin.tar.gz"
    sha256 "8c00360350e603d5ed17738580117a9518cabd79c692e20e2f7532f941df6dfb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.9/fluentci_v0.12.9_aarch64-apple-darwin.tar.gz"
    sha256 "f50c6e632d33b1f87f22a2cdf2c9ec87458ba1b71dd6cc93341c317eb92a343d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.9/fluentci_v0.12.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b27e3fde5829b83a7820fb059869a35df1dd0f8ae18e4e9ba9ab5ec60d3316af"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
