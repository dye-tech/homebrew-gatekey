class GatekeyMeshGateway < Formula
    desc "GateKey mesh gateway"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.3.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "29d2ece8cbb07b64b7265f7efc44137c2ac730860a4e06e06b397f38793c0f46"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "48693f6bb32c0584f8418007b4d13fe023f9f639e03582f6bc1da8eed046f0fc"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "3891428008154fe955d24121ff4439534712a80b1b08cce5cce240b6be45a3f4"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "e35270a98418902a3e202a15774be5d6ee31cadb72e92532b15a45f64a417332"
      end
    end
  
    def install
      bin.install "gatekey-mesh-gateway"
    end
  
    test do
      system "#{bin}/gatekey-mesh-gateway", "--version"
    end
  end
  
