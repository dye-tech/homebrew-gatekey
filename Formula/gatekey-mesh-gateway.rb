class GatekeyMeshGateway < Formula
    desc "GateKey mesh gateway"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-arm64.tar.gz"
        sha256 "abba4330e57438f260540c7fd48b9a374f5ea3af454d81aafb7be00b1e5d9e56"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-darwin-amd64.tar.gz"
        sha256 "6652c1c897dd9405a37202ca9965fed588f8a613dfea581c97fcfe127a49ef38"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-arm64.tar.gz"
        sha256 "b3b41dd52061c133233c8601f57701ba2fe5523b4f21be9ac8f2b50e19aa07b4"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-mesh-gateway-#{version}-linux-amd64.tar.gz"
        sha256 "da87942baf6668193e873bd9030f62f3e564bf139400b35cf25aeb965f9e46ac"
      end
    end
  
    def install
      bin.install "gatekey-mesh-gateway"
    end
  
    test do
      system "#{bin}/gatekey-mesh-gateway", "--version"
    end
  end
  
