class GatekeyWireguardHub < Formula
  desc "GateKey WireGuard hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "a0f25a60f3fee8050907974592de1dce7d0030e2a12b7fa1e2087b10505d7aed"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "f667aa10a84c40c323255c3703246dd849d3cb471b9846162112576ad002d8de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-arm64.tar.gz"
      sha256 "e0eb0e2b606561924787730907b5be26926919d3b7619f567c7eccf1387f40b6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-amd64.tar.gz"
      sha256 "d03bfcf5c48c84d219ecdfc4885e4925c8f613f76268ae5d6e5d47e5baf7cec5"
    end
  end

  def install
    bin.install "gatekey-wireguard-hub"
  end

  test do
    system "#{bin}/gatekey-wireguard-hub", "--version"
  end
end
