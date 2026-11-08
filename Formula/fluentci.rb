class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.3/fluentci_v0.17.3_aarch64-apple-darwin.tar.gz"
  sha256 "5313f9aca34430a5af0d50fe341d728141eab219e9aeebebb3635b34bfe59602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.3/fluentci_v0.17.3_x86_64-apple-darwin.tar.gz"
    sha256 "ef5e98111202ea39247d386e366ed7ecff9eb512fce8ca378e4157aa122b0513"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.3/fluentci_v0.17.3_aarch64-apple-darwin.tar.gz"
    sha256 "5313f9aca34430a5af0d50fe341d728141eab219e9aeebebb3635b34bfe59602"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.3/fluentci_v0.17.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b661abc0b53482c6653e7dbab06b902ecc190458bd0eed30abd62ef997b243e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.3/fluentci_v0.17.3_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "264bae4ced7406240b9c8ebc75ea67294c5f6717d176010299fe67b9df508d59"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
