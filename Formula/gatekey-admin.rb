class GatekeyAdmin < Formula
    desc "GateKey administrative CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
        sha256 "cac6e1274dc8fb28fa5d9889c5974d0c289c2bb7e3d72516a414ab9e3e5affc5"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
        sha256 "e892de47976fa6f9514daa260b4aff22e7aa826ae386fa6e1a49fcae98f98610"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
        sha256 "ee2817e661b06a820cfd1c4edde730a973be7234ba15845a152d340af35f9f0e"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
        sha256 "d935cdcb5d09d3c0fcf97ed321f4f8ffe5797c6ee71ba32155b6d42aa68ab9b8"
      end
    end
  
    def install
      bin.install "gatekey-admin"
    end
  
    test do
      system "#{bin}/gatekey-admin", "--version"
    end
  end
  
