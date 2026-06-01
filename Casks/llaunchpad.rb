cask "llaunchpad" do
  version "0.4.0"
  sha256 "61616c274c62fe058d0798f3d6a92b18fcf13b94f65df2d5226957cf07fad88a"

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
