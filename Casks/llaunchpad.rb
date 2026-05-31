cask "llaunchpad" do
  version "0.1.2"
  sha256 "eba43ad46cfe6e9f6ce9bcbca4a048e4967941bab99d189886043dfd6a978a97"

  url "https://github.com/draugvar/llaunchpad/releases/download/v#{version}/llaunchpad-macos-universal.tar.gz"
  name "Llaunchpad"
  desc "Native macOS launcher for Ollama coding agents with cloud models"
  homepage "https://github.com/draugvar/llaunchpad"

  app "Llaunchpad.app"

  # unsigned build: strip quarantine so it opens without the Gatekeeper prompt
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Llaunchpad.app"]
  end

  zap trash: [
    "~/Library/Application Support/Llaunchpad",
  ]
end
