class GatekeyGateway < Formula
  desc "GateKey gateway component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-arm64.tar.gz"
      sha256 "49fb92f717c19854799b864ee5ff82a5cfaca20eda91d04f6f15273c8de4b662"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-darwin-amd64.tar.gz"
      sha256 "e97d62fd3ad3cf1dabe7e55464767151d25f3b71952b560985febe8908710570"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-arm64.tar.gz"
      sha256 "11de7442d7bf7ffaecae3db5979f307e914fe50fa77fb2dcd84479e9d5b162cd"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-gateway-#{version}-linux-amd64.tar.gz"
      sha256 "31baf051e6b98ea78a954d8a780936605f091b6c3fa1db4551df33f32a5be29f"
    end
  end

  def install
    bin.install "gatekey-gateway"
  end

  test do
    system "#{bin}/gatekey-gateway", "--version"
  end
end
