require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.1.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.1.0/p2jsongo_0.1.0_darwin_amd64.zip"
      sha256 "0587a3b93792c4cddd8bfdfccd12964f79b86f40fc63c981296a539af2f80a5b"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.1.0/p2jsongo_0.1.0_linux_amd64.tar.gz"
      sha256 "97af4dc0e0e2d267bf50777a615fe194ac28e0d20a5fedeff6bbfb0b5a7a6aeb"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.1.0/p2jsongo_0.1.0_darwin_386.zip"
      sha256 "f46623fd1366ece200da995b2c507b23dc6ac9b3adebb0b826d8b42c1b76e45d"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.1.0/p2jsongo_0.1.0_linux_386.tar.gz"
      sha256 "ca659b0c52c2ed72837d691a887031f69286777aa37214b2196a3fb0df509838"
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
