class GatekeyAdmin < Formula
  desc "GateKey admin CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
      sha256 "709cba82db623e6f52d40e8af832d9fe8ef4b99c061f9657f2eea9c7ead38297"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
      sha256 "9274c1c4c02ccff55bf90c5c8b8a7c54ff5b8c434adffb64b0e09950450af887"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
      sha256 "65f7b7c948b26407caa687a587f2171c7bbee46e14d3516fa5acb7aaa55669de"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
      sha256 "e98111d57b28b174b22cc12a44bf3490c0548575d8f4fd06772b58e044dc7fd8"
    end
  end

  def install
    bin.install "gatekey-admin"
  end

  test do
    system "#{bin}/gatekey-admin", "--version"
  end
end
