class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.8/fluentci_v0.15.8_aarch64-apple-darwin.tar.gz"
  sha256 "f8ee0e11c608223e0bc03d3d9a24715deb4551710b910a4d00a839bcd86acd3d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.8/fluentci_v0.15.8_x86_64-apple-darwin.tar.gz"
    sha256 "e62800e0aad7edb886cdcc5ea44e748d1bc5f5a8288f547aad0842ad1e766e0b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.8/fluentci_v0.15.8_aarch64-apple-darwin.tar.gz"
    sha256 "f8ee0e11c608223e0bc03d3d9a24715deb4551710b910a4d00a839bcd86acd3d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.8/fluentci_v0.15.8_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13726c0a07bc5bdd8791c8a73643a799a9de872b21e4ec3b5e0a977ecbffcb07"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
