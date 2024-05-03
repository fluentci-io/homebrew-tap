class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.1/fluentci_v0.13.1_aarch64-apple-darwin.tar.gz"
  sha256 "11ea62bcc10436b86229b410040afc7316b60457b13b2cf9630531a4c40617e9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.1/fluentci_v0.13.1_x86_64-apple-darwin.tar.gz"
    sha256 "3214b9ed2a7e4e2201cdeb8ecdd29a4867f37f41ef5318b6fabeae7a4553131f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.1/fluentci_v0.13.1_aarch64-apple-darwin.tar.gz"
    sha256 "11ea62bcc10436b86229b410040afc7316b60457b13b2cf9630531a4c40617e9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.13.1/fluentci_v0.13.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cd3744d6a548b7481d7a51de1d1bcdd1e8d35da19c5866ebaf40853ac945a286"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
