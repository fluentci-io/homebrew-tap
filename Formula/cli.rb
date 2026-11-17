class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.8/fluentci_v0.17.8_aarch64-apple-darwin.tar.gz"
  sha256 "aa9924310e5adce89a8f635695f2159128bb25c0f0e905467bca9add45f55d37"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.8/fluentci_v0.17.8_x86_64-apple-darwin.tar.gz"
    sha256 "9b4fa0439b589907d40062000011784463ab1744ef17b6d6fe0e427de8f5e684"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.8/fluentci_v0.17.8_aarch64-apple-darwin.tar.gz"
    sha256 "aa9924310e5adce89a8f635695f2159128bb25c0f0e905467bca9add45f55d37"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.8/fluentci_v0.17.8_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9827ac3d0d8e4e868b206c37cd621a424e1fb3812fba46c4cdc9344b0d7c322"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.8/fluentci_v0.17.8_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2c7ce904330202b607d8eba8cc9671ca5b9563e3dd5c6712ed9ac6e49ce4f9cb"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
