class Gatekey < Formula
    desc "GateKey CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
        sha256 "0edfd9a93c95d3c247849acb75feeb167356f50c6d3e7cd32dfe5ba1d03e6064"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
        sha256 "b88ea5876609c7c7b0fd58d04afc66b032bcef7b7469eccc761fbd6b78f3c20f"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
        sha256 "39bdb4b9313b442377cce3d1e3b98bd1310934ff4cade3f8372a180f34cab854"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
        sha256 "362dc2456f04d196a510d922b402e67faed2d91961d048b3992112117c41f0d1"
      end
    end
  
    def install
      bin.install "gatekey"
    end
  
    test do
      system "#{bin}/gatekey", "--version"
    end
  end
  
