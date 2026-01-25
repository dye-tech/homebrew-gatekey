class GatekeyServer < Formula
  desc "GateKey server component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
      sha256 "92fe3d35b91d3c14bfaa101f7a56c7c223ec034226b972e7f2a71f6793abaec4"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
      sha256 "e0521e3a04deae1c6d7cb13f150330c4145082c59b05be630e4b8e175b1982eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
      sha256 "f7fe6b1f940077759976668cda9cb834c96aab3f754c301c2a8a20fa474f7967"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
      sha256 "437188c25efb5a73711fcd58e4aada397a8167f41a1d867d081efea3fbcb8e66"
    end
  end

  def install
    bin.install "gatekey-server"
  end

  test do
    system "#{bin}/gatekey-server", "--version"
  end
end
