cask "llaunchpad" do
  version "0.1.1"
  sha256 "e7aedff5c50de4b05871c02f399c9c64048ab1ef523dc464daa1e71df07aa0c3"

  url "https://github.com/draugvar/llaunchpad/releases/download/v#{version}/llaunchpad-macos-universal.tar.gz"
  name "Llaunchpad"
  desc "Native macOS launcher for Ollama coding agents with cloud models"
  homepage "https://github.com/draugvar/llaunchpad"

  app "Llaunchpad.app"

  zap trash: [
    "~/Library/Application Support/Llaunchpad",
  ]
end
