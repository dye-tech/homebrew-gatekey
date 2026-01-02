class GatekeyAdmin < Formula
    desc "GateKey administrative CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
        sha256 "4fd65b7d4d14d6a216a121951ef8d0ec16daeede51c02f679d4784ceaadd3a1d"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
        sha256 "daf9ad163aad23029cd7bc1ff4efcb007eb81c798751009034e24c205adc2844"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
        sha256 "89676a60f5c9c37245ad47ac2f122af7f9bdaafb372c7d8a8512482f0d3d5943"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
        sha256 "6307ee9283b1fdf8c766ac25ccb749017895362640f95fe02193cdc04e3c897f"
      end
    end
  
    def install
      bin.install "gatekey-admin"
    end
  
    test do
      system "#{bin}/gatekey-admin", "--version"
    end
  end
  
