class GatekeyServer < Formula
    desc "GateKey server component"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
        sha256 "d0b9b1731aed7f28de5e4f926706fab09a404ed6faed57790ded69df2d079eeb"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
        sha256 "3eed2e9c20f04b1e332d3b7a0fb15ee2f3e0825111f975892a866e39426ae49e"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
        sha256 "33f753deee9c110c313a3bea067e1a10b40e193ee426695a896f537a178572e9"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
        sha256 "0c1e26bf5a99f50f895c5e88948c6660d9f49d72979724aa8cd1dc32997eab37"
      end
    end
  
    def install
      bin.install "gatekey-server"
    end
  
    test do
      system "#{bin}/gatekey-server", "--version"
    end
  end
  
