class GatekeyGateway < Formula
    desc "GateKey gateway component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "38754cba80138a552fa640d6f5a3dacc9274413fa1344ee3887346d0d92827b9"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "5adcce7d86a233b646b76200dbab541ec73fb19e19ee429892bed48098b42bdd"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "021ca21ecae5836f3321d2afd8955f9e45555109bb89c7c59c8c451f2644ede8"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "5da146bba73c453858bb351d89791817885ec450249d9fb5a34366709bdd9c2d"
      end
    end
  
    def install
      bin.install "gatekey-gateway"
    end
  
    test do
      system "#{bin}/gatekey-gateway", "--version"
    end
  end
  
