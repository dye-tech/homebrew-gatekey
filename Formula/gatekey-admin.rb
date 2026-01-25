class GatekeyAdmin < Formula
  desc "GateKey admin CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
      sha256 "14d69d3e2e4f780667cba56c28e8a23790b5f68dad9d83fd7f2077c15cdd2f1d"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
      sha256 "80fac959058e82d5b3a4bdf93b3a32b4fc8ce18869511015cbf2d86f64688dcd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
      sha256 "d134ffc300068d532e2912885ce2ba3aa91ae3e4e4af548b50e65af2b3e2272a"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
      sha256 "e83e9c3fd12c7968589d80b6963aa1ecb1d8eae665de3374bbcc6fcd739f5ac5"
    end
  end

  def install
    bin.install "gatekey-admin"
  end

  test do
    system "#{bin}/gatekey-admin", "--version"
  end
end
