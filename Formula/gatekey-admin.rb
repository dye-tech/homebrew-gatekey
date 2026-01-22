class GatekeyAdmin < Formula
    desc "GateKey administrative CLI"
    homepage "https://github.com/dye-tech/GateKey"
    version "1.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-arm64.tar.gz"
        sha256 "a223720c757ac67265ca2016fe24a5b3650de3912b0bd5f7ab5c8504421f7af2"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-darwin-amd64.tar.gz"
        sha256 "2860083279d5272983a387c825f582646b546ae18809aa669bc511605b561808"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-arm64.tar.gz"
        sha256 "9b6e1998f2dd1cf08505efd380142b81046a12f767cbd228d98a4dd2bd6b3830"
      else
        url "https://github.com/dye-tech/GateKey/releases/download/v#{version}/gatekey-admin-#{version}-linux-amd64.tar.gz"
        sha256 "7d454cdf8de0f58cdbdfa9293c9ea2fcc79b067c31d96248e3e7893d436d8415"
      end
    end
  
    def install
      bin.install "gatekey-admin"
    end
  
    test do
      system "#{bin}/gatekey-admin", "--version"
    end
  end
  
