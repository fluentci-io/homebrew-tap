class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.7/fluentci_v0.17.7_aarch64-apple-darwin.tar.gz"
  sha256 "4a586509bf2b6be1037099066d806a2736920f27315a00d766836cb02c405796"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.7/fluentci_v0.17.7_x86_64-apple-darwin.tar.gz"
    sha256 "4f6a801befb0eb796f0d4394ce2756e0c66c79b39ff70f7d11872a2f8f33e112"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.7/fluentci_v0.17.7_aarch64-apple-darwin.tar.gz"
    sha256 "4a586509bf2b6be1037099066d806a2736920f27315a00d766836cb02c405796"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.7/fluentci_v0.17.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec5fe243e67106aea56c7be911addb66c1e5eca3c265db203d7b8cc2635eff8d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.7/fluentci_v0.17.7_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e26a0f8b20351fe2c6b25e6cc1c490aa67908ca6d0a4f436999d83007f0a517f"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
