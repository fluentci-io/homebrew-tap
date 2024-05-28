class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.4/fluentci_v0.14.4_aarch64-apple-darwin.tar.gz"
  sha256 "3dbaba98389ba9f035c049d05316d1893cfe43c97d003748284c8e273e29e3a9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.4/fluentci_v0.14.4_x86_64-apple-darwin.tar.gz"
    sha256 "66ed15074abb8416417688ca28da9afca898319ce82bb2a3f4d73268bfe27bc0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.4/fluentci_v0.14.4_aarch64-apple-darwin.tar.gz"
    sha256 "3dbaba98389ba9f035c049d05316d1893cfe43c97d003748284c8e273e29e3a9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.4/fluentci_v0.14.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "78e16455233991cd499be9c558ad1bbb8f4ff37f3febac04d5d63a204ac80414"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
