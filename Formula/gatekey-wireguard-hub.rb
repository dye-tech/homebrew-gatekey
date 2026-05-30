class GatekeyWireguardHub < Formula
  desc "GateKey WireGuard hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "6c9ec78f4ff522a04f08d46754f8e64e364b540106d67bd1afa511d23529b99e"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "915b1dbddc3a399e4f50d06278f0652e9a6460529ed68ea835e19acc74cb2233"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-arm64.tar.gz"
      sha256 "33172acf2ce8601bc3f995dd46a8ab4503dcb759aea807e127b52b9ce2ce1806"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-amd64.tar.gz"
      sha256 "e7a7adac17ff76f63e2f5b38fbaec53a453711d58f1164d7800405d1988b2d35"
    end
  end

  def install
    bin.install "gatekey-wireguard-hub"
  end

  test do
    system "#{bin}/gatekey-wireguard-hub", "--version"
  end
end
