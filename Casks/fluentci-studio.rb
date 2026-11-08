cask "fluentci-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.17.3"
  sha256 arm:   "08bba5d192ab962d350c8bd906708dd74e6c7d7b294122300742ab7d23ed1cde",
         intel: "030e12868c67a1bc705152e730aa2c144ffc87e1b162d46a0a206e3668147962"

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
