class GatekeyGateway < Formula
    desc "GateKey gateway component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "e971bbf6c11d9fd66295a2f42bda3ca090d621269a50e9f0feb447d96011710f"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "5d227d9e6270ac8292b67be82269994dd047716453f7d440dc6357f41d019c3c"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "7a64879d4969b0d3da00454a5dfaf49ded18299033c380acc854b0018f6a1490"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "17930ae86067cea30429621378f8691e68b226476467cad6f5c0e87950842fdd"
      end
    end
  
    def install
      bin.install "gatekey-gateway"
    end
  
    test do
      system "#{bin}/gatekey-gateway", "--version"
    end
  end
  
