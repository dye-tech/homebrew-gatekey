class GatekeyAdmin < Formula
  desc "GateKey admin CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
      sha256 "3404b4a65acd611fffbd14534bf3c09c389cea895e89e649a26637bb1d508987"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
      sha256 "a2d7977a6ae3492b67bc25e4d18d11d54d82d5529bbec908f7751ce156366d79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
      sha256 "d6abcd2c75571d22dd81447d379375ea3a58f51237af32ec9fdec30ea690228f"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
      sha256 "a76019e4b52776542f6ff5a6c292e39bce41c051a47b749bf126e5ae2580d837"
    end
  end

  def install
    bin.install "gatekey-admin"
  end

  test do
    system "#{bin}/gatekey-admin", "--version"
  end
end
