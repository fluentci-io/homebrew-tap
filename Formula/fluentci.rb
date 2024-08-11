class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.9/fluentci_v0.15.9_aarch64-apple-darwin.tar.gz"
  sha256 "30e704e48103107322f3ff058ad46ea24c117976a41d105cf447b8eb463a67ea"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.9/fluentci_v0.15.9_x86_64-apple-darwin.tar.gz"
    sha256 "99abb3cad98d768678c45b2a763ab336f632a40966faef0c8ddec2b2f2fef151"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.9/fluentci_v0.15.9_aarch64-apple-darwin.tar.gz"
    sha256 "30e704e48103107322f3ff058ad46ea24c117976a41d105cf447b8eb463a67ea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.9/fluentci_v0.15.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d360b8521707b48b5b46ca549f21f2bd033d196641f39c54b1b1d633df98ecc6"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
