class GatekeyGateway < Formula
  desc "GateKey gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "6483350a9ac5f3fb1595d795b6c8a95f9c54f0d4bda4e61fca3eaa1ca1eaa3f8"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "6fcf7ecc4860f16cd518e74945a239b1a9f5a2a6a83c8f52e072aee2beaecdf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "62e98ae2fcb62a4c62e3ef082842268e7dd95fe95a2c721eea702db91acbfa2d"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "4cdd15c4a7944208608bc736e795c3bbc5fbbfd1048f3ff1cca706e2f86da1e8"
    end
  end

  def install
    bin.install "gatekey-gateway"
  end

  test do
    system "#{bin}/gatekey-gateway", "--version"
  end
end
