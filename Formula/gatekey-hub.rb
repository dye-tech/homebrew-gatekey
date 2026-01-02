class GatekeyHub < Formula
    desc "GateKey hub service"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
        sha256 "b47108ef0e77a501bfe406728c5081658f3c70bd20202152ed87044811b86969"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
        sha256 "009b874cf5662f766efb2075abc70e13a61bfd94aa20c8a4915a536db1cf6936"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
        sha256 "5bbf6a4c7bdf91374591e1f55a3000564314a1c0eccba53742ea168acc57ad25"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
        sha256 "49e05e480bbd35f881cc656c68f04598dd920f80eed5799404bc385c61b21137"
      end
    end
  
    def install
      bin.install "gatekey-hub"
    end
  
    test do
      system "#{bin}/gatekey-hub", "--version"
    end
  end
  
