class GatekeyServer < Formula
  desc "GateKey server component"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-arm64.tar.gz"
      sha256 "9d287c0660fb26eea8044726f4a5a745679f0ca1424b7c7630b8bc8d381fd7a6"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-darwin-amd64.tar.gz"
      sha256 "5c3cb9afe813866d2d817c0d1803008548a46805f462c4fe9b1919872312b2e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-arm64.tar.gz"
      sha256 "afa9cb8da45947066b6b6a3c9a5c343590e7a494a2a82dbff25545fcccc39047"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-server-#{version}-linux-amd64.tar.gz"
      sha256 "41e799cfd61e6bf834638a7c8710c7ed107e3be1970460953bc56e2cd7010f16"
    end
  end

  def install
    bin.install "gatekey-server"
  end

  test do
    system "#{bin}/gatekey-server", "--version"
  end
end
