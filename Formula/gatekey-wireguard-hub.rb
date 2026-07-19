class GatekeyWireguardHub < Formula
  desc "GateKey WireGuard hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "97cd4e58f9addaac53654edda4585fa11d849c253e5d1c036833e7cd36143299"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "18c747a68344fdf7a9523354d4cee8733cf8dbd13e838ef2061c2ae95e824272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-arm64.tar.gz"
      sha256 "c7594409fadff7aea81e612b537e894578e42fe6b3f7b1773bd17537a8ce4308"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-amd64.tar.gz"
      sha256 "0bd7fca15b0845ba51f26780e163603fa9efced0a0e697f451c97e031850fe24"
    end
  end

  def install
    bin.install "gatekey-wireguard-hub"
  end

  test do
    system "#{bin}/gatekey-wireguard-hub", "--version"
  end
end
