class GatekeyMeshGateway < Formula
  desc "GateKey mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "9a7512a6fb6a2abf11d364ef530078af186fa08ecb9671e224048f5cc0aec111"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "7caa2f4aeac886d28414b722405ec5e16350e6acdba693f63c8b09f4e46af2b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "5dd2366500e8ad5f4b3fef19f55e8d3e053286230e67d14bb7d937e05e9b89dd"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "e449119de90b93fab3771a498b11c9b032cf400160c3ba0e0c8ad58f591db7b8"
    end
  end

  def install
    bin.install "gatekey-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-mesh-gateway", "--version"
  end
end
