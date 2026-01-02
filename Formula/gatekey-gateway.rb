class GatekeyGateway < Formula
    desc "GateKey gateway component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "cae1cba555410d73e8af3db43b7bbda9794241c133f5c6472c3ff93975b0b062"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "3c4b3825ab4d21330cdb247a044e82689fa7d4f0acaf3cb46c9d74eab52bfb8d"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "27f865a261c7ecfc1b83c97a7b44435b76bc6ed5b00fbabe11bebcb7de6990a2"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "9fe45c362eac83a57bdd306c86d5f86aaa4e8c83e59dc04738ebed172a2d9304"
      end
    end
  
    def install
      bin.install "gatekey-gateway"
    end
  
    test do
      system "#{bin}/gatekey-gateway", "--version"
    end
  end
  
