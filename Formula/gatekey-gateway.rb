class GatekeyGateway < Formula
  desc "GateKey gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "8a9bfb853ada701c1c1161d6520d46c49af4d3924886549cdd77f847fd0453f7"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "71377fd3aa8ae7a7934d1ae336ac2c71d9c5f2bd28a02020bcafcaae83f38e64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "c4ce455172f0e223248c659de2b153ffca4d875c01f05bc481de488f31818b9a"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "bef02468ae8963314d917a0ed65783646d750f833e25503d06f9a32ca666f481"
    end
  end

  def install
    bin.install "gatekey-gateway"
  end

  test do
    system "#{bin}/gatekey-gateway", "--version"
  end
end
