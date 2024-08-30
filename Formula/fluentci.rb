class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.1/fluentci_v0.16.1_aarch64-apple-darwin.tar.gz"
  sha256 "d76a63c8fb9d9ad39586c7c133116303e2c9008c64bcf820fcded4400ae8401e"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.1/fluentci_v0.16.1_x86_64-apple-darwin.tar.gz"
    sha256 "ed7a8c1970dd1c9ff59a4dcd8c849c016b06b549b0679ec4ddd38413513b07e9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.1/fluentci_v0.16.1_aarch64-apple-darwin.tar.gz"
    sha256 "d76a63c8fb9d9ad39586c7c133116303e2c9008c64bcf820fcded4400ae8401e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.1/fluentci_v0.16.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f13f7a40ce196baa73a5b263c605f0f4c45f7b1c174f5853c4a0f6ec3704429b"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
