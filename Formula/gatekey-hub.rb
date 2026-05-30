class GatekeyHub < Formula
  desc "GateKey hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "1be8574ee390f53ac1db7aec73a75f0cd3dd6e30e92d6c142f759c293c155736"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "0c5cc901439efb6f83681e1411da8b2ace7338d1df586ed53715af044e02009c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
      sha256 "bf01dcb9c3afe428430d8daf5988f3c730994c43ea5de3afeb20c8830c7d58e0"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
      sha256 "c84d47edb4922498b7e1b1e668ca070116cc937b02822dba7eabf0e323acd951"
    end
  end

  def install
    bin.install "gatekey-hub"
  end

  test do
    system "#{bin}/gatekey-hub", "--version"
  end
end
