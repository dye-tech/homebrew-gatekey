class Gatekey < Formula
  desc "GateKey CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
      sha256 "15f938cfe4b7aa9e20a55f01fcacfc8fd1b0f67d997f2be43a70fa6cffcbf235"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
      sha256 "bceffa97ed20c380ed4c137788cb971d68980ba8d436c59a62cf82f48be3a438"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
      sha256 "0d215f668ac607a4ef7717311f9f0d9e0dca459e100cf89778c52ddcf9fb1fd5"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
      sha256 "cfb5d780545b232e21be94e1b7f39a6e32859cad924c3786a1416fcf60fa6af3"
    end
  end

  def install
    bin.install "gatekey"
  end

  test do
    system "#{bin}/gatekey", "--version"
  end
end
