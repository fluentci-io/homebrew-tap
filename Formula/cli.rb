class Cli < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.1/fluentci_v0.14.1_aarch64-apple-darwin.tar.gz"
  sha256 "78295e29ffa67be46ac27bd29178efcb04eca7fad5ca347e2dab636e817f3be5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.1/fluentci_v0.14.1_x86_64-apple-darwin.tar.gz"
    sha256 "371f1a06d6af260729f4e6cc8fda442a44524280a96fdc65f3926ca102e41bae"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.1/fluentci_v0.14.1_aarch64-apple-darwin.tar.gz"
    sha256 "78295e29ffa67be46ac27bd29178efcb04eca7fad5ca347e2dab636e817f3be5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.14.1/fluentci_v0.14.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ccf6b5edab8ddc7b616b87431085b6691560faf5efb994a48593d277fb723ccc"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
