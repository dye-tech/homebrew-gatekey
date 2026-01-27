class GatekeyWireguardMeshGateway < Formula
  desc "GateKey WireGuard mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "0c9a3d40d0a92a80a205694bbf64f4a0779e4100ef28c27cd44cd2d2a0fd03f0"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "60e8fc02e2fb52954904b7d83b9ca5f17bcc794e7cc2e68617dae76d3add40cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "fcf791011265cc03724639db47dde2e9d918a2d852d644a7305f618f258d3a36"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "1075f07ca164c5f8ba3a15f2362a0bb93fa1c72cb61817bf2e4fd707435f2961"
    end
  end

  def install
    bin.install "gatekey-wireguard-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-mesh-gateway", "--version"
  end
end
