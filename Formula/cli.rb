class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.0/fluentci_v0.13.0_aarch64-apple-darwin.tar.gz"
  sha256 "69f4679d8345d1657d03390d7402342a2f18f977c823ac48bb2d2203b13b5a7b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.0/fluentci_v0.13.0_x86_64-apple-darwin.tar.gz"
    sha256 "41b5fd8d71278299e9952adae806e2c3b226a3f9b257f62f3921d375f7261a69"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.0/fluentci_v0.13.0_aarch64-apple-darwin.tar.gz"
    sha256 "69f4679d8345d1657d03390d7402342a2f18f977c823ac48bb2d2203b13b5a7b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.0/fluentci_v0.13.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1547aa4b59df3bbb3ffbe136d13e17da5ccab0c13b2c4aba423ea9f872b4d08e"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
