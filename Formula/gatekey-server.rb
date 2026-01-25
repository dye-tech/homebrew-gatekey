class GatekeyServer < Formula
  desc "GateKey server component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
      sha256 "1c8a68ebdf6f6f274f5d695e898c3d0f5adc7df5239e418945a1299361a935fe"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
      sha256 "5c6cd0d29acf0453d49932c8ac5f84642967f3afceed1d1a6b47c2e7b3b518e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
      sha256 "2fe26d1150d7839fd513d381826785cbda1adf2c309e735404b265ba5d6e9e7e"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
      sha256 "9cd099e04f6307799888623531b146a0a4340f1b2ab02b2a6e8a9580013446a6"
    end
  end

  def install
    bin.install "gatekey-server"
  end

  test do
    system "#{bin}/gatekey-server", "--version"
  end
end
