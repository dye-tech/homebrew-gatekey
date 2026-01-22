class GatekeyMeshGateway < Formula
    desc "GateKey mesh gateway"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "e510b933cd3dbedd9bfe06e0b40636aef0454732934c1d5fd099e563240e88b6"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "9658dfd05bdd637b5e659cc9ec0d910f08a929521d6d4ff682a31fa3759cff35"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "d0b60c347de8eb3292e74f5dac2a4be0b38743d2512cd088e50693b9165f080f"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "ba88aa099b2bcd75ea90ca7a4362a7bf915a41d46571189044fc8be35d613429"
      end
    end
  
    def install
      bin.install "gatekey-mesh-gateway"
    end
  
    test do
      system "#{bin}/gatekey-mesh-gateway", "--version"
    end
  end
  
