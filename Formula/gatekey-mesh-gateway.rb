class GatekeyMeshGateway < Formula
    desc "GateKey mesh gateway"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "9f159a0101f9da0a49b4073898d7e2c28c39440d243e90a1fd03b1b786f45df1"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "c2af205df0f23d1f9a99f30751a763722513d273714694bacff0e89a3726cc32"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "0267374656ddd4d8cf667e09ee8647ef59d0beefd974aa6dc06e9a73e9059a43"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "57e4925fd84a3b8f2c570ccb0357aa9ce991fea4d829d4cecdbfcfbd3aa3a6b3"
      end
    end
  
    def install
      bin.install "gatekey-mesh-gateway"
    end
  
    test do
      system "#{bin}/gatekey-mesh-gateway", "--version"
    end
  end
  
