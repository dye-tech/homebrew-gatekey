class GatekeyAdmin < Formula
    desc "GateKey administrative CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
        sha256 "2215f29f126328c204c6cf6ebab9856c301d30de13455b2707a19da51048ba94"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
        sha256 "5f9a7f8a7742521b6dbb07d275e0dea47b2315c4206cfaf900d44163402a11e6"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
        sha256 "4118093f0bca7444e7261116642f7b46584bc9ff564e9aa0cfb2bd7e4a298102"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
        sha256 "6e5a194997a9e7d99e767f7caa1fecf52a2c3d4c3926630454ec1d2cb8aac7f3"
      end
    end
  
    def install
      bin.install "gatekey-admin"
    end
  
    test do
      system "#{bin}/gatekey-admin", "--version"
    end
  end
  
