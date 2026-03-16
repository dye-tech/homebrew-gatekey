class GatekeyWireguardGateway < Formula
  desc "GateKey WireGuard gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "1b65437faaaf3b6a60b4bdfd4af826427a06e53cfdae655d0263d2f2b61aa928"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "a558eee11d7c548af3c8052a222de2f6f4c58ec91c8454b2bcb68fe8f1554e16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "45ea49dbbda4f9ae4a0b11004fbb5bb2abb12fe251c843492bfc465052438345"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "091589347f5317653948ef1387deb021ad05298d6b676180552d390ed96119b2"
    end
  end

  def install
    bin.install "gatekey-wireguard-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-gateway", "--version"
  end
end
