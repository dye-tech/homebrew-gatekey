class GatekeyServer < Formula
    desc "GateKey server component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
        sha256 "68b0ca39a1a345305f86cb783f36835cdad515f730d35bcb287eb93463fdc106"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
        sha256 "2a25d136d50dad6790cfd94748dcb9720acc6eb1a13f93a7bb6620b02a84a305"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
        sha256 "9d499d06e231ca973bdc008a45a110552fe94f32a34f5d465663c6d8fbea35f1"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
        sha256 "61f6cb93b9cf08b52b0a048bbe3232d00a1dd189811fb6b6d94162bcabd98f00"
      end
    end
  
    def install
      bin.install "gatekey-server"
    end
  
    test do
      system "#{bin}/gatekey-server", "--version"
    end
  end
  
