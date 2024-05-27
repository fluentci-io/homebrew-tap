class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.3/fluentci_v0.14.3_aarch64-apple-darwin.tar.gz"
  sha256 "9e37176574c01e5d704b963e9f1ce3e06cca4d64183e53b458e6ed9bf2018cd9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.3/fluentci_v0.14.3_x86_64-apple-darwin.tar.gz"
    sha256 "81258518ba2babae7755491978137c099a71501c976c3b6210f472eea5c8ea94"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.3/fluentci_v0.14.3_aarch64-apple-darwin.tar.gz"
    sha256 "9e37176574c01e5d704b963e9f1ce3e06cca4d64183e53b458e6ed9bf2018cd9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.3/fluentci_v0.14.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "237a1d1718dc679ff35839bedf04568b22ee8cb63135f2d2db68f097490e4c60"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
