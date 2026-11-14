cask "fluentci-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.17.4"
  sha256 arm:   "c015c88adf9eb6751b070038354e52ba14261488114aefb66ddc7ac45111edc1",
         intel: "39f1550868fd9f466b190e2d2b3e896818a80498bd0f13560db1e267957927df"

  url "https://github.com/fluentci-io/fluentci/releases/download/v#{version}/FluentCI-Studio_v#{version}_#{arch}-apple-darwin.dmg"
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
