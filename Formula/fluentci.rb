class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.7/fluentci_v0.6.7_aarch64-apple-darwin.tar.gz"
  sha256 "d7e1d64719115959e544f7f45e91b481ea4478318d3300c613a20715c0480fcf"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.7/fluentci_v0.6.7_x86_64-apple-darwin.tar.gz"
    sha256 "d72981dcb32f247e85deabac7bd6755311517f16300a4ed85b5dc466bd4560a8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.7/fluentci_v0.6.7_aarch64-apple-darwin.tar.gz"
    sha256 "d7e1d64719115959e544f7f45e91b481ea4478318d3300c613a20715c0480fcf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.7/fluentci_v0.6.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "72fb499b8de39d77d2961be1f487f2cbf7ae0a9ffe957aebac81892afc511880"
  end

  depends_on "deno"
  depends_on "dagger"

  def install
    bin.install "fluentci"
  end
end
