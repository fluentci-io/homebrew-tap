class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.6/fluentci_v0.14.6_aarch64-apple-darwin.tar.gz"
  sha256 "dbb37621e3c0351e5e2db3a27654d1ae31b3dc45ce042903d9fc7f6971e1d262"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.6/fluentci_v0.14.6_x86_64-apple-darwin.tar.gz"
    sha256 "21517fe14ffc406c1773b1f95a9b14b8db02a7a89567f76fc26f53fa4c5a374a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.6/fluentci_v0.14.6_aarch64-apple-darwin.tar.gz"
    sha256 "dbb37621e3c0351e5e2db3a27654d1ae31b3dc45ce042903d9fc7f6971e1d262"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.6/fluentci_v0.14.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4d624ce7eaa7f2d34f63e0a7b4b634266c0799b7833c0eda24cb7136a83db422"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
