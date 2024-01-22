class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.0/fluentci_v0.11.0_aarch64-apple-darwin.tar.gz"
  sha256 "7fa133f419ed8324fbecdba45331e74516479c7e629cb64057ce65c30799634f"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.0/fluentci_v0.11.0_x86_64-apple-darwin.tar.gz"
    sha256 "8046986cb521b0156f6bb8f3a8779f3bdbef14a6ae1a737629ca3b108c4f6d0d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.0/fluentci_v0.11.0_aarch64-apple-darwin.tar.gz"
    sha256 "7fa133f419ed8324fbecdba45331e74516479c7e629cb64057ce65c30799634f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.0/fluentci_v0.11.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f3d474b89569fb44ad8112c61f5d1393cfd932b7ff39d82f0b1ecf84bb91306e"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
