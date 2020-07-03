require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.1/p2jsongo_0.0.1_darwin_amd64.zip"
      sha256 "466dc589628a6b1fc492e9a4e7e3c05ce74f2841e6ebeb806783772bd51dd2bb"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.1/p2jsongo_0.0.1_linux_amd64.tar.gz"
      sha256 "e4b1346422872fce6167e03748d38fa46d3efd0590b3b223def0c0a5e1960f4c"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.1/p2jsongo_0.0.1_darwin_386.zip"
      sha256 "91fc74637eef7dadfaaca3c5cdbcbf2927656ff13b59471e73711c2329926922"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.1/p2jsongo_0.0.1_linux_386.tar.gz"
      sha256 "48bbcd88fb2cdb0b73d04cad0fd79a7361c27b2db546bc43954c9b54b4514fd7"
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
