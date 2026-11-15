cask "fluentci-studio" do
  version "0.17.6"
  sha256 arm:   "8a6fcb0bd0df96ee8d7704df6be8a6edeffbf6a436321be4b558ee8f55a23f4e",
         intel: "1c375db64c7bfdb9f9cc68a8e2d75adcc059a79f7a76f54aaed9567a1f533bc2"

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
