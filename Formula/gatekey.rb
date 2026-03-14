class Gatekey < Formula
  desc "GateKey CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
      sha256 "afba3dee0fe7f60aa61ca3285fefde9dd8fafdfce4c35324e14b133fe6f02b4a"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
      sha256 "fb715f0818341d6b5f98987dc311377c1544d854382a33d8a3f9b56e7f124f1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
      sha256 "ace8b70806409d2016f6a71f7a13a134e28bd08470ec122f38564af10eab23ef"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
      sha256 "b2df9527ecafcd986d52071a908896575d5db2ec057a43d012ac51f8cce10226"
    end
  end

  def install
    bin.install "gatekey"
  end

  test do
    system "#{bin}/gatekey", "--version"
  end
end
