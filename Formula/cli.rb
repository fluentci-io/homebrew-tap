class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.6/fluentci_v0.11.6_aarch64-apple-darwin.tar.gz"
  sha256 "e845e0005d7468bbbbd30a7c15c609ae7738e509da09426252c8eaebdbfe6da2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.6/fluentci_v0.11.6_x86_64-apple-darwin.tar.gz"
    sha256 "a8fc44d4f642c19ceb254da51ff39f7d7985712a41e997522009eba205d92b55"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.6/fluentci_v0.11.6_aarch64-apple-darwin.tar.gz"
    sha256 "e845e0005d7468bbbbd30a7c15c609ae7738e509da09426252c8eaebdbfe6da2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.11.6/fluentci_v0.11.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1a50e811b1cfc964662e3119d3c22d47532edd64861a1f119ad5e17a37ef28da"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
