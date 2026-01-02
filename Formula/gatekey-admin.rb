class GatekeyAdmin < Formula
    desc "GateKey administrative CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
        sha256 "cefe9d0278ac9634c0dfb6f9fa8f780e6e15084fa436c853647ecac0090169ee"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
        sha256 "c39389a7b490afece79fa2f0ab0a0f95f9ea9abb22258e9eadf1bb76ee1a149e"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
        sha256 "92048dcfc6dda740258bf865c203135fffe8bbe4f9641d0e56bb172c45036049"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
        sha256 "bfb8670b6776f47b86314334714f28c9c7351feb64506d266dcc9aaef89191f0"
      end
    end
  
    def install
      bin.install "gatekey-admin"
    end
  
    test do
      system "#{bin}/gatekey-admin", "--version"
    end
  end
  