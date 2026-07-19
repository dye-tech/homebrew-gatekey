class GatekeyServer < Formula
  desc "GateKey server component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
      sha256 "f67f82f9de937a64967670657c96eda59351ed4dca49dfe6d18349cb6fc989e9"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
      sha256 "040ed241c6fe82c41cfe8f2160ad3bb30e98ea37f9b54c1c1f258a7aa4335f33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
      sha256 "3a920fd451d2088c5f8e5922da306c20510a3ada6ee4b04dd11e27738dde5fac"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
      sha256 "a075400af8a913671bc83a3819f1a2ff8922f7d69f7fcc6c844b0fbece2eaaae"
    end
  end

  def install
    bin.install "gatekey-server"
  end

  test do
    system "#{bin}/gatekey-server", "--version"
  end
end
