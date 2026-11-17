cask "fluentci-studio" do
  version "0.17.8"
  sha256 arm:   "e026ac53eddb686d6d06ac0c90712a9fa03bf7d8472d15565fa77f62a52bad03",
         intel: "0df389cabd7c3bba625b5fae9e9a23fb2c530d3e97841d1cd20731d5ca0f85be"

  on_arm do
    url "https://github.com/fluentci-io/fluentci/releases/download/v#{version}/FluentCI-Studio_v#{version}_aarch64-apple-darwin.dmg"
  end
  on_intel do
    url "https://github.com/fluentci-io/fluentci/releases/download/v#{version}/FluentCI-Studio_v#{version}_x86_64-apple-darwin.dmg"
  end

  name "FluentCI Studio"
  desc "Desktop app for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FluentCI Studio.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper refuses to launch it
  # while the download carries a quarantine flag. Strip it on install rather
  # than making every user reach for `xattr` or right-click → Open.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/FluentCI Studio.app"]
  end

  zap trash: [
    "~/Library/Application Support/io.fluentci.studio",
    "~/Library/Caches/io.fluentci.studio",
    "~/Library/Preferences/io.fluentci.studio.plist",
    "~/Library/Saved Application State/io.fluentci.studio.savedState",
    "~/Library/WebKit/io.fluentci.studio",
  ]
end
