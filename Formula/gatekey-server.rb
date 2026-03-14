class GatekeyServer < Formula
  desc "GateKey server component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
      sha256 "e8b7465c86b28605cf948cc5f1856a5f0e865a39557b951081135fb7919c83d5"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
      sha256 "f468d935d0b247a4e0e61c3165fa76cf96132364ad62bde1ee6b7e04e91d34a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
      sha256 "1418f60040a8939fa0e890546bf5878cf5b16207b42cbe359ce6be97bd301077"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
      sha256 "343ec7a07398340d8d3d619f93a0b18095b03edd00791072d2f7408cbda0ee90"
    end
  end

  def install
    bin.install "gatekey-server"
  end

  test do
    system "#{bin}/gatekey-server", "--version"
  end
end
