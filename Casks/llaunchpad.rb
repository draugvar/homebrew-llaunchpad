cask "llaunchpad" do
  version "0.3.0"
  sha256 "07523319a3e433edb9ca852806c95f64de598bc97f64051ec0bd90e94a63e157"

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
