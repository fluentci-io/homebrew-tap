cask "fluentci-studio" do
  on_arm do
    version "0.17.5"
    sha256 "4f7275064dacaeab003eb5792bdb2b2f630fd365c38f04c98f7e1391454ae92f"

    url "https://github.com/fluentci-io/fluentci/releases/download/v#{version}/FluentCI-Studio_v#{version}_aarch64-apple-darwin.dmg"
  end
  on_intel do
    # v0.17.5 did not publish an x86_64 DMG; keep Intel on the last release that has one.
    version "0.17.4"
    sha256 "39f1550868fd9f466b190e2d2b3e896818a80498bd0f13560db1e267957927df"

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
