class GatekeyGateway < Formula
    desc "GateKey gateway component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "6abc3e75e27f53ca0fc4df08897c19c09427d6103c14d12966d56ae41c35dd5b"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "554a4c1edc39c89cd1765c4cd277efdd8ade73abc3fdd247362ed065f3b2fae4"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "e9e931d803a426170675524de34cb4b728ecb662562512db20f5bee46b394584"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "68016b4fcc124b69b2a8ff11a0b933aa7db7e04f9e050f5bfc85181fbfecbc90"
      end
    end
  
    def install
      bin.install "gatekey-gateway"
    end
  
    test do
      system "#{bin}/gatekey-gateway", "--version"
    end
  end
  
