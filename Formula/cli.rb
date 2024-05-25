class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.0/fluentci_v0.14.0_aarch64-apple-darwin.tar.gz"
  sha256 "3a05468d6c88fd38e27a1ac0cfe78158a5cfd9f13ac10ad7d24451acc09a6ff8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.0/fluentci_v0.14.0_x86_64-apple-darwin.tar.gz"
    sha256 "d36a8f7fa375e9dcc2e2de2484885125c36343a7415dcf4eb7780d800185b842"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.0/fluentci_v0.14.0_aarch64-apple-darwin.tar.gz"
    sha256 "3a05468d6c88fd38e27a1ac0cfe78158a5cfd9f13ac10ad7d24451acc09a6ff8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.0/fluentci_v0.14.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8a846e70a8cad17acc0d8657f13ffbe7c9335b4b86af1260447409860258d98"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
