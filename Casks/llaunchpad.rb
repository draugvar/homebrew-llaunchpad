cask "llaunchpad" do
  version "0.2.0"
  sha256 "0018f1b430b8b2bb421660edd209b02349a231ee70dcf1e8731c9bb5755e6e2d"

  url "https://github.com/draugvar/llaunchpad/releases/download/v#{version}/llaunchpad-macos-universal.tar.gz"
  name "Llaunchpad"
  desc "Native launcher for Ollama coding agents with cloud models"
  homepage "https://github.com/draugvar/llaunchpad"

  app "Llaunchpad.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Llaunchpad.app"]
  end

  zap trash: [
    "~/Library/Application Support/Llaunchpad",
  ]
end
