class GatekeyHub < Formula
    desc "GateKey hub service"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
        sha256 "44d490229d1b2325b45ce0afa330d878f4b8ce46c2a5036ef03d5fae80fd8a73"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
        sha256 "eb3dbe46cc21ca90c19f20ea8990451a71d9e8fdbc8e58a0d3d38bb568076bf7"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
        sha256 "199f8df24b1ace4b6dc2c9dc25764d2dd81e99b5a4ae54b6e6b370bc815c4433"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
        sha256 "4dd27ad44b5d9b7943e8a382b51e332b139688ceac437ddd2ae74dd7702fb26f"
      end
    end
  
    def install
      bin.install "gatekey-hub"
    end
  
    test do
      system "#{bin}/gatekey-hub", "--version"
    end
  end
  
