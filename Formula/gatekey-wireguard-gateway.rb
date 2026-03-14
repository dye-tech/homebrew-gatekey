class GatekeyWireguardGateway < Formula
  desc "GateKey WireGuard gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "0a56174ca13d6f7e025d7af6b7efd289e72bc6b4e0d1f9856051913d818fb8cb"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "eb6cbea1890bf2128f99ba8013344d3dfebcda2ed5f66edfe008286761a8d9ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "4020161216c3612e86d3879f1fe0835a582e62a19f6f3fb513c709db631c302b"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "77d030afc40fbf72a675b4deca34e50931b6fd9ce3ab5b400efd5233dcede679"
    end
  end

  def install
    bin.install "gatekey-wireguard-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-gateway", "--version"
  end
end
