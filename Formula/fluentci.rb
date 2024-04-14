class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.6/fluentci_v0.12.6_aarch64-apple-darwin.tar.gz"
  sha256 "af55f311ca5dd782e930268942d5147cc7cbf97d06d1ac67022bb23f857948c3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.6/fluentci_v0.12.6_x86_64-apple-darwin.tar.gz"
    sha256 "017c745753ddd93b9bca3cdf90bc5e74237d32b4dc750ecb6b74f6543a389090"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.6/fluentci_v0.12.6_aarch64-apple-darwin.tar.gz"
    sha256 "af55f311ca5dd782e930268942d5147cc7cbf97d06d1ac67022bb23f857948c3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.12.6/fluentci_v0.12.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b35c7cb50af64d47918acdfed22805c52de45ab1488d042f443b985d52e0525d"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
