class GatekeyHub < Formula
    desc "GateKey hub service"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
        sha256 "83c19aa61a8d91f814e8c27885a7c3b17d5c7568ed9bd4aab2ebfb3b789b1c4c"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
        sha256 "9b10110936793bb6449e9791e1130db519c289c641de8ee58d948c5d50c59c77"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
        sha256 "7888a4c214a5f140e63ca16f607f28352858f480433fdfc02deb0f06b4a187e7"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
        sha256 "cb876cd72ee7c4c290bf1fa9158783093bdb22ea82ead546ab9be47fb7e26ff9"
      end
    end
  
    def install
      bin.install "gatekey-hub"
    end
  
    test do
      system "#{bin}/gatekey-hub", "--version"
    end
  end
  
