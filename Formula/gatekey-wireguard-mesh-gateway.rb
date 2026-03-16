class GatekeyWireguardMeshGateway < Formula
  desc "GateKey WireGuard mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "2ccccac30ebefbde27db3fb9796042ca93b3d12ca69dddb5888094ff0adf13e6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "cd46fdd97b4d8287b259899c2a6c68fe0b715f135bac868c558ea54866e29443"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "f473c5d727c51a7f3f6cba5bd4c4132a1f834d7aaa835c84a46f797e6543ad38"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "be9020309e5a3126a63f746bb25798058c16deb93539dfb23ad2c04d9970c861"
    end
  end

  def install
    bin.install "gatekey-wireguard-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-mesh-gateway", "--version"
  end
end
