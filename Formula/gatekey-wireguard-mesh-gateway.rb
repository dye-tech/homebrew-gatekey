class GatekeyWireguardMeshGateway < Formula
  desc "GateKey WireGuard mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "652fbff54c461621deb05c43d9a01f0766921bfb44c9ef1326b37ae60ce505e4"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "8f4164fcf708e6af3affbbe3d8a2f07045df314e75dba7bf6927db501aa1be04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "a7f1a8065e83c0d891c74d50939a68b2434e45c17bf4b4bdca5ad0821bb411f8"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "53803e291af2ee9bf08c5b57c1ba4db8f96f20453f39137dee135edaf4634088"
    end
  end

  def install
    bin.install "gatekey-wireguard-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-wireguard-mesh-gateway", "--version"
  end
end
