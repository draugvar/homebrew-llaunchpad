cask "llaunchpad" do
  version "0.1.3"
  sha256 "b9635958ff4b3d73e7413ecca47ff9517fdb619ab7a31cb1af6324f011cd7376"

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
