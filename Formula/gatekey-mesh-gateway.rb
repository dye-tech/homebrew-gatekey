class GatekeyMeshGateway < Formula
    desc "GateKey mesh gateway"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.1.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "20a4665c6ceb2761ca6c1cef0521276164a5fa9e9e46423ae56fbaca86d7ba30"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "8edb7ceef42d8deeb8184249f021b3277699d283c169f27496a8241299574534"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "ee8d0f173e306bf4da136fb340f299b4404044546ee06c66b33ed38f93daa974"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "f1fb3b25e4f87503f4adffea5b46a71b8b4a653bb4da6bc0911e7d8b9c3f3d23"
      end
    end
  
    def install
      bin.install "gatekey-mesh-gateway"
    end
  
    test do
      system "#{bin}/gatekey-mesh-gateway", "--version"
    end
  end
  
