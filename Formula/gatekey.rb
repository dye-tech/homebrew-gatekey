class Gatekey < Formula
  desc "GateKey CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
      sha256 "8aed57d0fb3acbe4dcb6649ca3781ab960430e204109c4e9d1a644afa1718bc6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
      sha256 "5e518ff5ba17972145fa7477ce765bd2343fa84655d2d45a95858ffa91fc61d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
      sha256 "cf6d34b5dd29c03f2fc681a6617610d6c365ac4336c935d5e68fd19f048ba886"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
      sha256 "82b915b0c0e42d8192b5a7a9a776854cc23cdbe4cadbc68812107093ceceb58f"
    end
  end

  def install
    bin.install "gatekey"
  end

  test do
    system "#{bin}/gatekey", "--version"
  end
end
