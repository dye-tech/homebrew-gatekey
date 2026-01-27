class GatekeyWireguardGateway < Formula
  desc "GateKey WireGuard gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "gatekey-wireguard-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-gateway", "--version"
  end
end
