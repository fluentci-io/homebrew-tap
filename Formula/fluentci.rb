class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.2/fluentci_v0.14.2_aarch64-apple-darwin.tar.gz"
  sha256 "c313df6939f19c70c9d349d251af8561d6d2c55f3a8948f5469b5d4b654fbd30"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.2/fluentci_v0.14.2_x86_64-apple-darwin.tar.gz"
    sha256 "df13799a8635fcb269bc09a20577c1043a4ec16d35987f62023c2667ae787b3b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.2/fluentci_v0.14.2_aarch64-apple-darwin.tar.gz"
    sha256 "c313df6939f19c70c9d349d251af8561d6d2c55f3a8948f5469b5d4b654fbd30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.2/fluentci_v0.14.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a74004895dbcf0257cce1db4d9d0724308512cee9e15830e604f408768b7c9fa"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
