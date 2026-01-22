class GatekeyServer < Formula
    desc "GateKey server component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
        sha256 "053bd74ff4e230042ebef82efdffed1891de9ca8ea8392fa3e50e6d68439faa9"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
        sha256 "ca1c9a9a616a496dcab3ef7ab87807dbd027925786f2aa377c3ee8791891ffec"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
        sha256 "0df638db274232b85da8ed8811d8367d3ddd59156c21efee4cbd8d0bffa6cf22"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
        sha256 "f62a7bf4ee471c0d7068b738444bdd954335e515cd9b2daf56fa84013a78748a"
      end
    end
  
    def install
      bin.install "gatekey-server"
    end
  
    test do
      system "#{bin}/gatekey-server", "--version"
    end
  end
  
