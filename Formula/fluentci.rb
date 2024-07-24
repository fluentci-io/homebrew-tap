class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.3/fluentci_v0.15.3_aarch64-apple-darwin.tar.gz"
  sha256 "2782f1fefdcd11896c719e104f347ff154141e9fbed233870c203dc7410c25d2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.3/fluentci_v0.15.3_x86_64-apple-darwin.tar.gz"
    sha256 "0f1f874d6f0fea8f3ea40e77dd082b60f99b46d28be698f4d05862039668d998"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.3/fluentci_v0.15.3_aarch64-apple-darwin.tar.gz"
    sha256 "2782f1fefdcd11896c719e104f347ff154141e9fbed233870c203dc7410c25d2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.15.3/fluentci_v0.15.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9abc1f237af8e385707644dd5eafd07ba35ae1dd0bed7ddeb5baba24b9d97484"
  end

  depends_on "deno"
  depends_on "dagger"
  depends_on "glow"

  def install
    bin.install "fluentci"
  end
end
