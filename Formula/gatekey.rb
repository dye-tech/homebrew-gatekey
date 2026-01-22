class Gatekey < Formula
    desc "GateKey CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-arm64.tar.gz"
        sha256 "f59d8eabccebb1259acaf5cb271dbb45ec595ab8af119964f3f5de56ca4e8dbe"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-darwin-amd64.tar.gz"
        sha256 "c822329457a5575f5e6a5ba80cc26eed05ddf674b68da9cc349d8b1b4ce32fef"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-arm64.tar.gz"
        sha256 "f6c781b9bd332df1332bc894c9759fe2aa1189ce86e4060a6ff60ccf34504d7c"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-#{version}-linux-amd64.tar.gz"
        sha256 "78115d586dae63d741982a44365432917981eb6ce7110515f04b3f7ca7eae40e"
      end
    end
  
    def install
      bin.install "gatekey"
    end
  
    test do
      system "#{bin}/gatekey", "--version"
    end
  end
  
