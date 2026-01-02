class GatekeyServer < Formula
    desc "GateKey server component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
        sha256 "c87378f40e50c081b32e552914c3d00bc96db05ca933b08c5809a6f971b9b2cc"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
        sha256 "9c501f5fc82213d0a148c3ce8e17049c86878f3ede18a69c096cc17a44a47a06"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
        sha256 "bfee2604043f2df1237e6dcd84383243d3d06c25fdb6c2757200b0fddda733b7"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
        sha256 "1e6795f7cde7cefe46f27e78ed6136da49039e427833c2a4cda3c841722eb5c9"
      end
    end
  
    def install
      bin.install "gatekey-server"
    end
  
    test do
      system "#{bin}/gatekey-server", "--version"
    end
  end
  
