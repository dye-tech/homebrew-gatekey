class GatekeyGateway < Formula
    desc "GateKey gateway component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "4363a6aa51b9eb5ba6d52d9fdce6d3abdc68b84787dc8cdf12aa23533e071e17"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "a4e5e51f99b01edbb65774dfc4e99ba8c2e276057f1defc7965169887f73289c"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "3a3a3b363eda881231b5107edae87cbd007a40959d7ad2cb1f03f1b3d5bb1277"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "1a11d123f7fb28c81eb1a2a00ffffbd727e94359bcf9c51f4f77ca744571f785"
      end
    end
  
    def install
      bin.install "gatekey-gateway"
    end
  
    test do
      system "#{bin}/gatekey-gateway", "--version"
    end
  end
  
