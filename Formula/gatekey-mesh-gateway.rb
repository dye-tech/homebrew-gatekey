class GatekeyMeshGateway < Formula
  desc "GateKey mesh gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "97cf594d81c51f45e9349b8339cc9d430f5704453fbaa670b4c3a30afe17ecda"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "88db6e0a20a545e5380a100fa6b8ded09c4ed96c836768ac0e66ff181c44710f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "709934802c1e70318eb73efb7ded0d56a291af5ad4bd4c0d80087a1dd218868f"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "5bd51298e36f354d7aea58a2d3da4d8766cc0e8cb372a3edae3ee3fd337f090a"
    end
  end

  def install
    bin.install "gatekey-mesh-gateway"
  end

  test do
    system "#{bin}/gatekey-mesh-gateway", "--version"
  end
end
