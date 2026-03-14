class GatekeyMeshGateway < Formula
  desc "GateKey mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "ee1f73693d8ba596bd1146179df43566a73757a261348ffae53523eebc358c60"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "87aef60c0a707871b48674c0e17ab5eeaddfa9b0b4c8114b669c45cb33515356"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "bb59882f1ceef85f8ccdd5761f807558e2e43080c606dd7583c013e1d95225f9"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "f069935fd6668e1d5a32a4d450e9826da6c2a9fc3975c08b6cab0683d59a963f"
    end
  end

  def install
    bin.install "gatekey-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-mesh-gateway", "--version"
  end
end
