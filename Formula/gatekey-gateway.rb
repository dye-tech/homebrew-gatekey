class GatekeyGateway < Formula
  desc "GateKey gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "bc990ed998776e0699187a34918b9ea52db91ff2b9c121523a39c36752da66dd"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "51c5a7f6958807c7cf57d1764e8339e0fc0d61564e1c76b81dd0bab5dfcd5659"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "7ef366d40826dcdfc11bb2b065eb0139a6aea8d2e042d4a2590d48c907281f75"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "98c9d791f90db732e9838adbfa6fecf9e93d0ad106187d3d311af7c549bed782"
    end
  end

  def install
    bin.install "gatekey-gateway"
  end

  test do
    system "#{bin}/gatekey-gateway", "--version"
  end
end
