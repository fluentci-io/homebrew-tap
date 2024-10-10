class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.4/fluentci_v0.16.4_aarch64-apple-darwin.tar.gz"
  sha256 "ea913c5678f4d86b4e5a4ad4c780036f2ccbc823abae0c05531fe53512a354c5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.4/fluentci_v0.16.4_x86_64-apple-darwin.tar.gz"
    sha256 "ca5729cf1ff18d39bd7a25501f20e82165352323fa6ba363edb76481f3f2198c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.4/fluentci_v0.16.4_aarch64-apple-darwin.tar.gz"
    sha256 "ea913c5678f4d86b4e5a4ad4c780036f2ccbc823abae0c05531fe53512a354c5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.16.4/fluentci_v0.16.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "387910722c82ca602994071a59779ff755d57f787f019c6b2d285f93d92fe634"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
