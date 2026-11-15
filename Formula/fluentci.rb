class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.5/fluentci_v0.17.5_aarch64-apple-darwin.tar.gz"
  sha256 "c99c45df490cb0c06a4558594548b67a44c46bd14cefa721e1bb3e6ac378b639"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.5/fluentci_v0.17.5_x86_64-apple-darwin.tar.gz"
    sha256 "e1d711e45d9630efceb0aba680699e29a93b34d4a620ad1633e21b2d924c3bc0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.5/fluentci_v0.17.5_aarch64-apple-darwin.tar.gz"
    sha256 "c99c45df490cb0c06a4558594548b67a44c46bd14cefa721e1bb3e6ac378b639"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.5/fluentci_v0.17.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a271be2af5727b615d86592740842bf9d01d59dfa689727d1aab08d9fccc716"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.5/fluentci_v0.17.5_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5770fd80f47148af08251e49803cb48c5814d8d593a58aafaf9c6c0b6b7759f8"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
