class GatekeyAdmin < Formula
  desc "GateKey admin CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
      sha256 "ccf5e8a70f816494a79454c8db1dbde83c9fd8bc08d173e20382229d331c6c96"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
      sha256 "33a1af2117e7f0728acdaaed77645c6e43e7346ba6163ae9a89b4bf7652f1c5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
      sha256 "7a48d251617ec4953d0696a165e355bf4ff4d419d2a9c97ad2c1dc7d6a731219"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
      sha256 "9f1f345dba4050a03856a90bb3e9059040afbf0d059bd116e13a742b8d949d65"
    end
  end

  def install
    bin.install "gatekey-admin"
  end

  test do
    system "#{bin}/gatekey-admin", "--version"
  end
end
