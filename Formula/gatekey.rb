class Gatekey < Formula
    desc "GateKey CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
        sha256 "1a1eb5274dcb4d62328132f7965ef6b7806930fb0c191b89f56798ac7bb67c49"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
        sha256 "54e01270cc93a9825de333e3eb0938cb403602edc386cca8a7bc66f9e86e8599"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
        sha256 "46fe143dbfc841793799edc78fb60fa08f5d54249bc91b3d6c7109db0ed4edf6"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
        sha256 "4f11d2e365a605d33d81d646da5bb9cb34eeef7678b0cb6e4dd322abf5ea2b20"
      end
    end
  
    def install
      bin.install "gatekey"
    end
  
    test do
      system "#{bin}/gatekey", "--version"
    end
  end
  