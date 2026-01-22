class GatekeyHub < Formula
    desc "GateKey hub service"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
        sha256 "f2a1a71592b3e9b9f0e1268bd31cea3aabb934cfc7a028b02b46de5d4421cbf0"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
        sha256 "dcf25735e15b7c4151cd8329ea5ace0559450ed126e3db6ad2c59a1a79c47dca"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
        sha256 "a1e2b60e863a21354c7ab6c53f60d17d9e629d54d3ff13445f50f2a85b0d3836"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
        sha256 "b0532a6d4793aa5538164cd4530f0083c34426c02404d1e72758f46ac7d30446"
      end
    end
  
    def install
      bin.install "gatekey-hub"
    end
  
    test do
      system "#{bin}/gatekey-hub", "--version"
    end
  end
  
