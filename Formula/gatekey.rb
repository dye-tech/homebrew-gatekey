class Gatekey < Formula
    desc "GateKey CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
        sha256 "1791cfbbeeb945fa03b56ba576c596c0828ab6cbf62292cc1df39f5fccd641b6"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
        sha256 "6de5819b2909ad784eec22caf8ca5bc731478ac26a8ca67d51b8b9e81cedfc8f"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
        sha256 "fdeb1cbb1e18c297fb36f559e5e781eab23ab3a4f1540a6e2396f737eb528f2d"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
        sha256 "c5b08316a9338cb2a81b49a7ed8df7fac3fa614fc0e896826702002b8b7f5f30"
      end
    end
  
    def install
      bin.install "gatekey"
    end
  
    test do
      system "#{bin}/gatekey", "--version"
    end
  end
  
