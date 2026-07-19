class GatekeyAdmin < Formula
  desc "GateKey admin CLI"
  homepage "https://github.com/dye-tech/GateKey"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
      sha256 "cc5836f42846e241781c7fb3c20365030aef96d08fb18bb398cff89aa0b2239b"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
      sha256 "7aa8c2f532d908041f4943ee0686456e471bd167a433546ecadd367a6cb0dc51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
      sha256 "b16e79b0d7b4b6d41227775cb3fec5ef06c5274e5050fbe1e53e6ebcc2cdfd16"
    else
      url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
      sha256 "cf1171f9c2fc7d0aac139488720ce1b2cfde091caf3ca440d893011142d40469"
    end
  end

  def install
    bin.install "gatekey-admin"
  end

  test do
    system "#{bin}/gatekey-admin", "--version"
  end
end
