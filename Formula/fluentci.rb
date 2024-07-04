class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.2/fluentci_v0.15.2_aarch64-apple-darwin.tar.gz"
  sha256 "1263edea9aa08eacfe341c254728da5c5b80ac1e632ec28bf1820edcdbe9e100"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.2/fluentci_v0.15.2_x86_64-apple-darwin.tar.gz"
    sha256 "08b88333ad7228256527a5b87daafc9f95d464a3e06a274eb8876a790f097222"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.2/fluentci_v0.15.2_aarch64-apple-darwin.tar.gz"
    sha256 "1263edea9aa08eacfe341c254728da5c5b80ac1e632ec28bf1820edcdbe9e100"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.2/fluentci_v0.15.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ac723fe2afab626ba8c25f9e9d6991f9a5888daaed5c65dbd4ceabea6349e40"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
