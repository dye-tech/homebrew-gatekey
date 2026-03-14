class GatekeyHub < Formula
  desc "GateKey hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "f07758593dba909a8983f8bf54e4753c88ff1fe88ef45042399659dce0a052b6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "df91c60cacf7655f1667120b2a80654859de26c641c53f128f96762b628b59a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
      sha256 "293feebfe6b7e2af54d6f7c2d4843d7106834d31ed83cfaf8d97102fc41d08d5"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
      sha256 "27c723b38a7a504f61d1edd83c1fc6c4ca939ad949f911eb49602de489505a91"
    end
  end

  def install
    bin.install "gatekey-hub"
  end

  test do
    system "#{bin}/gatekey-hub", "--version"
  end
end
