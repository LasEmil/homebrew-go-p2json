require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.4"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.4/p2jsongo_0.0.4_darwin_amd64.zip"
      sha256 "8e3ec7fdfbf4fe44eeeb730c73497e5d787f61c58c9b3f55bccf479af4068a98"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.4/p2jsongo_0.0.4_linux_amd64.tar.gz"
      sha256 "a0b61d06f20844ee23a5818080fda9cb069a0d0aa9ee6486be2ff4910c2e55eb"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.4/p2jsongo_0.0.4_darwin_386.zip"
      sha256 "b26fc0f294379a56efe9aefecfaa095e2c4b368b2a8b6779959896578771362b"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.4/p2jsongo_0.0.4_linux_386.tar.gz"
      sha256 "cc1821f00402e535048d4300c64fdba6444573fc87a4e923c2669ca461ca0d41"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "p2jsongo"
  end

  test do
    system "p2jsongo"
  end

end
