class GatekeyWireguardHub < Formula
  desc "GateKey WireGuard hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "60f6c79dcb6a89b279cc14fee9eabcdb0b7eb0639f12f9b5636aef9de25e8b32"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "069641ebb1ec049d22631ee8b5db6189488b2454072c5350d323f002db2d617e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-arm64.tar.gz"
      sha256 "048dfae407d780687434912ecdb67c65da78766b3dfef617736a48ecd608ad80"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-amd64.tar.gz"
      sha256 "56b7685e5b06894b13e97cb5443b137722d53ee52b46cebea6e2e781cbfd0064"
    end
  end

  def install
    bin.install "gatekey-wireguard-hub"
  end

  test do
    system "#{bin}/gatekey-wireguard-hub", "--version"
  end
end
