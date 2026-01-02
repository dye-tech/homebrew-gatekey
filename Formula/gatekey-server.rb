class GatekeyServer < Formula
    desc "GateKey server component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
        sha256 "23e87658c8f6c94359473b9a5d34e28ddaa904f8c01207ac102dba395b6da3b2"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
        sha256 "1f0965d4f592e3e9f59848fb300833139578b24910725137ba83f43e6c8065e1"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
        sha256 "312e4f445c346a3f290469f5c098d4f2142d854e324aa24c989da8664a36ea72"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
        sha256 "a0f317ab27021f72a89fef184ef5ad291ef809b2c3e11f46161cd94be5a265c1"
      end
    end
  
    def install
      bin.install "gatekey-server"
    end
  
    test do
      system "#{bin}/gatekey-server", "--version"
    end
  end
  