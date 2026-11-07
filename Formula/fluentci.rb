class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.2/fluentci_v0.17.2_aarch64-apple-darwin.tar.gz"
  sha256 "33240fabc7f361046dcb26ef98ba8d9bfbe5f0d015f29a51921eb845577c62d5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.2/fluentci_v0.17.2_x86_64-apple-darwin.tar.gz"
    sha256 "84ada210ad2120e3f0f61109c03dc25490a9f86dad02a11c1a9b8914d90379c3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.2/fluentci_v0.17.2_aarch64-apple-darwin.tar.gz"
    sha256 "33240fabc7f361046dcb26ef98ba8d9bfbe5f0d015f29a51921eb845577c62d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.2/fluentci_v0.17.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2175f04034e0ac75ae72f91e06d2f47205927ac0eae8697c9bbec09b9c112c61"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.17.2/fluentci_v0.17.2_aarch64-unknown-linux-gnu.tar.gz"
    sha256 "51bdf17d0efa8d48ccc6e667e45984d5bf074a5e324dae8d77961e35cd4b31cf"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
