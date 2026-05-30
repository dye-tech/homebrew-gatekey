class GatekeyMeshGateway < Formula
  desc "GateKey mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "c444175a6698db608de9f7de5e1d87ee80287b06b27037b4f884da1f5c468d22"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "1fc42f5d54224dc3a3fba3e63972080a960d44ba3f63c803086c45df02612296"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "f8d0ace88394a1e85003af5d0b61709b7af83203c5ce89cc5f6fa0e532a0b61b"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "d831208a47039cc83bb6907f9bb2ac9c2ea2157cb5fe73f441ae41f45414842c"
    end
  end

  def install
    bin.install "gatekey-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-mesh-gateway", "--version"
  end
end
