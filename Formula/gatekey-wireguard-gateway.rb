class GatekeyWireguardGateway < Formula
  desc "GateKey WireGuard gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "ac294962ac973a769428f1f5a35248e393331fd077e63512e26239a81b982434"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "1fe1992ff323ca9556540513108f4b7b6180f7d3e0f32024788569c622980bcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "eab12707433df4a318bd62b133df246cf485ef7d64a5b8af6ff0f4b7e644da35"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "21ec93b59fe6728d7a8b7784edd4b2f8f5d5144b6db4b196aa109e9d390a68d1"
    end
  end

  def install
    bin.install "gatekey-wireguard-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-gateway", "--version"
  end
end
