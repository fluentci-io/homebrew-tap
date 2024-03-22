class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.9/fluentci_v0.11.9_aarch64-apple-darwin.tar.gz"
  sha256 "242a99364ea9af1e70b34e28538c06c6eb6ef0e27893b7d83b372d2451cfb98c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.9/fluentci_v0.11.9_x86_64-apple-darwin.tar.gz"
    sha256 "05523111fe95845de372ced8b21b8e5ccf40d71b756257ef0b72c3d2acf1ca94"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.9/fluentci_v0.11.9_aarch64-apple-darwin.tar.gz"
    sha256 "242a99364ea9af1e70b34e28538c06c6eb6ef0e27893b7d83b372d2451cfb98c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.9/fluentci_v0.11.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ddfc92bec9eef26ec76151a4d5084d2f27cf9f014d05669b0db94fa71367583"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
