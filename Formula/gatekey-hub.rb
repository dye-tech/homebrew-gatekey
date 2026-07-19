class GatekeyHub < Formula
  desc "GateKey hub component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-arm64.tar.gz"
      sha256 "b1edb25dfb7d6d47a1fb50236cfa8d8544286808d838cb4ec68f1e85c18161fc"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-darwin-amd64.tar.gz"
      sha256 "581fd57879bfb82bdd1425dce79143d1e433ed376ff862278dd7e16f4a55fc8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-arm64.tar.gz"
      sha256 "b5cad106bcae516f8033aa1ea8d37e836c4f9aa9287d5a93a131a335a38848f6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-hub-#{version}-linux-amd64.tar.gz"
      sha256 "8d277d34a5952385b5cc24cecc72d1b21bb613960fb412c4e0b86c265b63b2be"
    end
  end

  def install
    bin.install "gatekey-hub"
  end

  test do
    system "#{bin}/gatekey-hub", "--version"
  end
end
