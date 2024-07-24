class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.4/fluentci_v0.15.4_aarch64-apple-darwin.tar.gz"
  sha256 "13145cdcf38826c7c61bf7cec07e56fc773687cb9f8e98c0044612fe998cf65e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.4/fluentci_v0.15.4_x86_64-apple-darwin.tar.gz"
    sha256 "058ed99f188975fe3ef43d19c3bea7a7699c2eb9d17a751bdc654db71f7b9ba2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.4/fluentci_v0.15.4_aarch64-apple-darwin.tar.gz"
    sha256 "13145cdcf38826c7c61bf7cec07e56fc773687cb9f8e98c0044612fe998cf65e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.4/fluentci_v0.15.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "49a6d7eecd4e4c808ca69808a9e7033e7b1912a33c8792dc53f2ac5305092e44"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
