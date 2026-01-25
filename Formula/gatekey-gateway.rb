class GatekeyGateway < Formula
  desc "GateKey gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "cb07cb93960b86a68356e526f66441d67470e225a1ba5c0c1537a0c535e06851"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "b5af1f0258944cc9149b73faaaed05173504df623bf5aedc12b0ce9c2195ec08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "8eaf26ced36479e04a01043abe6fb7860ddf7e1342efc59cce198d99df1fd7b7"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "75b5e029d1a975d93a4953eeb75b64528dc3266721e92705aff97efb751f5729"
    end
  end

  def install
    bin.install "gatekey-gateway"
  end

  test do
    system "#{bin}/gatekey-gateway", "--version"
  end
end
