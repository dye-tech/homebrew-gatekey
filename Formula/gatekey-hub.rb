class GatekeyHub < Formula
    desc "GateKey hub service"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
        sha256 "2b0f37323e7a339cdbe358684eb5f317a85ac7b2019e187ec2c23d28bf83b71b"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
        sha256 "ab26142938f0108d0d7b169636a72120ead5a5afd9592f9996e8745c37ca6d2b"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
        sha256 "51ba500a0a58215c8eaa355c578119171e26b4a1c3c97ace90b6f7000da97275"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
        sha256 "7750b3e790d4768cb020920a26f440322f85e92002ec3e1037e37498600293e5"
      end
    end
  
    def install
      bin.install "gatekey-hub"
    end
  
    test do
      system "#{bin}/gatekey-hub", "--version"
    end
  end
  
