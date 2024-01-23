class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.2/fluentci_v0.11.2_aarch64-apple-darwin.tar.gz"
  sha256 "c4802823c509acb7e89653b0ed33c63e79a879f229d90a02b9c524b33789004c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.2/fluentci_v0.11.2_x86_64-apple-darwin.tar.gz"
    sha256 "17a70f5859cc5dec9a4d7a62ff368187df1647668a1e28b479b6f2ed6b663ae7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.2/fluentci_v0.11.2_aarch64-apple-darwin.tar.gz"
    sha256 "c4802823c509acb7e89653b0ed33c63e79a879f229d90a02b9c524b33789004c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.2/fluentci_v0.11.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db6dc37717d112ed306e4617003fd17c3934c20f74da5ad6e8ff60fe0c0008f3"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
