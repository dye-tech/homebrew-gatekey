class Gatekey < Formula
  desc "GateKey CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
      sha256 "291e027fbcd37df9b427625e4a3859414f9a117f74cfb81c632ee77bcaee8dec"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
      sha256 "b46751d3477a260cbc1385954082b5f418f4443feb802f6215fd32153ead5ee9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
      sha256 "dff09ec664456c40dca05990ed2c33e1ccfe262f411c718cc49f14b032523a98"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
      sha256 "7db3ecda6ab12ebcc70c0fe018615c7b71ef1ffacfa0ba84e814411e62e7a449"
    end
  end

  def install
    bin.install "gatekey"
  end

  test do
    system "#{bin}/gatekey", "--version"
  end
end
