class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.2/fluentci_v0.16.2_aarch64-apple-darwin.tar.gz"
  sha256 "cc989b7fa3c4676ba838a5318c81af33b8138ae4ea375db79f6abe1894c87074"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.2/fluentci_v0.16.2_x86_64-apple-darwin.tar.gz"
    sha256 "54a470faf16996361b95f1c82a331fa2c51b8e462fa9ec22014779b385f17535"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.2/fluentci_v0.16.2_aarch64-apple-darwin.tar.gz"
    sha256 "cc989b7fa3c4676ba838a5318c81af33b8138ae4ea375db79f6abe1894c87074"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.2/fluentci_v0.16.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ee60b0edc3a8ff6d696df913368cd1252a4f6392d22c94f2a3acae45ae2a93d1"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
