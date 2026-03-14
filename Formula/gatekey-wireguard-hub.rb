class GatekeyWireguardHub < Formula
  desc "GateKey WireGuard hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "811c8e27d08ab9b89d99d6de44075867f10b2c75e086ddeeb3b7782466c50465"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "b90e6b82ed47c687656aab8430c6c03f8ef0d5241704c392fc0def0b8d16eb90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-arm64.tar.gz"
      sha256 "7bfd302cf5b62dd8cca85d5ca260c86ad7283c2cf50f029e60df981de31294c0"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-wireguard-hub-#{version}-linux-amd64.tar.gz"
      sha256 "a017c8978387a70f8c3c95bca4ab588eef8f5e0fb400a4c107ccadb35a241c6e"
    end
  end

  def install
    bin.install "gatekey-wireguard-hub"
  end

  test do
    system "#{bin}/gatekey-wireguard-hub", "--version"
  end
end
