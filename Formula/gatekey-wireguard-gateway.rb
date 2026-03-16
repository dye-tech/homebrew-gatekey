class GatekeyWireguardGateway < Formula
  desc "GateKey WireGuard gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "094a4f0a098fd3f2b8c36ff501557bd8d5d37a0200957f73455d8a3ec4657677"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "df0cdf906a6d3f7fd849e28cc923062aa43fd2c9c41d6c44dad6baca03909ad7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "6195371a4a67ccd2c4cb4b21d915a57a48a82287de927c5b85c1c537e69d40bf"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "a6cdc9ecb2e6ee017ae1866bf3d6c1ecdd60c3f2e4faef86f581c0595dd5870f"
    end
  end

  def install
    bin.install "gatekey-wireguard-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-gateway", "--version"
  end
end
