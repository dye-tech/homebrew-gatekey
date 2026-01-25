class GatekeyHub < Formula
  desc "GateKey hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "f2347d93e4acd9c6ae588b8afa31bc2c31d6abf8285b047b0fc3cee002c5f84f"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "8f0a3d71e83e8d730dcafb03a8ef5bfa08149815f0d2e94b8fdb15ed6750a769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
      sha256 "a2a58b40b6041f3edafb50fb5eef6e61149187b7abab65ab9fa63c87177a339d"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
      sha256 "3e8e33e85e52e26c02420fa24184673d7dbe8c358f43c93b1a7f2dfb5a35f9b9"
    end
  end

  def install
    bin.install "gatekey-hub"
  end

  test do
    system "#{bin}/gatekey-hub", "--version"
  end
end
