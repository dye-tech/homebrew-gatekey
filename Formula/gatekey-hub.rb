class GatekeyHub < Formula
  desc "GateKey hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "348350d332b96f0575a82aa1854a3b2b3bb44840f2c36485feb62d7e343f6d44"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "d8f7c6ce1ae0d4260b353b94845f261fca983bac8a31b4a6ba2a9c04e8366b06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
      sha256 "f3bedfa3c9c0b24b192894f103d3ed0f3296bea03ee256cb300d4976821de100"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
      sha256 "0e8be018c3e82fd0e3f71d4ffadc5c77dc9e0fdc5218b9e0c1a05d59bb0e8433"
    end
  end

  def install
    bin.install "gatekey-hub"
  end

  test do
    system "#{bin}/gatekey-hub", "--version"
  end
end
