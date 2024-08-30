class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.0/fluentci_v0.16.0_aarch64-apple-darwin.tar.gz"
  sha256 "0c1a3e25c4f3ea9b84986df5ad74891c0e22a26c0a42580f6135aa657631b4c8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.0/fluentci_v0.16.0_x86_64-apple-darwin.tar.gz"
    sha256 "f582622750f7286892b8e83148e00e4f80d05b7ddb895b3473fd5b8144645069"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.0/fluentci_v0.16.0_aarch64-apple-darwin.tar.gz"
    sha256 "0c1a3e25c4f3ea9b84986df5ad74891c0e22a26c0a42580f6135aa657631b4c8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.0/fluentci_v0.16.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b01582a1cf863b5750cf92e704d203df50ddc7bc89eb1af6710c1d6e07d31f30"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
