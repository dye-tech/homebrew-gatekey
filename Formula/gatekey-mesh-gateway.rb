class GatekeyMeshGateway < Formula
  desc "GateKey mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "192799e59286b55a47a6f903f0b9807803e8b160871140cbed3f510c1e2eefd2"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "75045b9d2be28d8e7ecfba61ddf2b1c04af642da7005e43fb57cca78e98e7733"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "ba926f9f74227adae070efe1568c059bdf11fedba3cce5a91f4839b029422d85"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "368e79481dbb87b71051959031e5557937b4521a32e9b69feaa0d589c2a2e6c0"
    end
  end

  def install
    bin.install "gatekey-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-mesh-gateway", "--version"
  end
end
