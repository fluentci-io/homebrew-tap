cask "fluentci-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.17.2"
  sha256 arm:   "ed283c7027fbebff6608dabed192f8d4e6a0a538ccc87e0c730fd73c39cf1bee",
         intel: "1b2e03f8f4922680f640be3e705f5f8aabed20e58264c97fb0cc333e8cead7c9"

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
