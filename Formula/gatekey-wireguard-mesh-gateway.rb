class GatekeyWireguardMeshGateway < Formula
  desc "GateKey WireGuard mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "62bfb012841d9242629b210b13f160ea4748d6e0e071a8b90427da0260f61dd4"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "7884ab6d55a0c1b59543faece354950a0bd396fc97333aaaf3de9bae38c9daca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "70d80f80a048985e609f5f08e69722562073cb03a5153eeeb2e3a0b9d5522e8e"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "0c78fa0f981c4cdef0610cf57812405465c8ebf1d52f6de51406bbffd7a80f36"
    end
  end

  def install
    bin.install "gatekey-wireguard-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-mesh-gateway", "--version"
  end
end
