class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.4/fluentci_v0.17.4_aarch64-apple-darwin.tar.gz"
  sha256 "9571123a24443929e4313bf46a25ffa1a16192d64942d934fd0b35865a440f65"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.4/fluentci_v0.17.4_x86_64-apple-darwin.tar.gz"
    sha256 "468533ec1e89f321546728007b1a0d4db2ce1abb8e95df094878afbbf2557c81"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.4/fluentci_v0.17.4_aarch64-apple-darwin.tar.gz"
    sha256 "9571123a24443929e4313bf46a25ffa1a16192d64942d934fd0b35865a440f65"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.4/fluentci_v0.17.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "39ec040ac888feac361051bb359e36bbce154354c3a2469cd0cbcf1f80d5a55e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.4/fluentci_v0.17.4_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "99601f5290007c2437ab4120dc9145f9e60bcfe1c1085743995b7a92300c5442"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
