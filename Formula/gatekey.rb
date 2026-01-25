class Gatekey < Formula
  desc "GateKey CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
      sha256 "e3d663a3a950da63b8dbaccde726925f424539d9928e5bc0f479836872eac209"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
      sha256 "6e497c0f69ae0e02d02f97afe4a4c92ad9c991569a4311fb0d706c8689ba0293"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
      sha256 "8523c0a05a98fb918925cf13a2df5ba38443b6ee1fc48566b0fc6fd4ae496fe7"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
      sha256 "a6c49283180fb5ba06c5eb1c8b6d1506c0a3663bc1e15ea523d3ad067b40f186"
    end
  end

  def install
    bin.install "gatekey"
  end

  test do
    system "#{bin}/gatekey", "--version"
  end
end
