class Gatekey < Formula
    desc "GateKey CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
        sha256 "67c1d6424ce1082c8052407a4b18141f4fba4a74731b78ffb3f28f0656f7bf90"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
        sha256 "14c9278b54b1803a9e81652608bad5c57af628982941fdcbefc8423f21991268"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
        sha256 "c60d3fb4b411127729fa7a85ca43256354550b87da3136280b3bb556c8122c7a"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
        sha256 "bba9162d07af928f6b6a85ce9857ee03b23459fc32445f3adf4bcb6f2906607c"
      end
    end
  
    def install
      bin.install "gatekey"
    end
  
    test do
      system "#{bin}/gatekey", "--version"
    end
  end
  
