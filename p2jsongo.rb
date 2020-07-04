require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.2/p2jsongo_0.0.2_darwin_amd64.zip"
      sha256 "979f26bd4fbc2c090c2b65512b3344616efe17748f4b5970aa91ad3e7543aac0"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.2/p2jsongo_0.0.2_linux_amd64.tar.gz"
      sha256 "f4ae75d08de86202fe685a41ba57d4416cad0d183c775018055c6f94161c0266"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.2/p2jsongo_0.0.2_darwin_386.zip"
      sha256 "5590ee6688be9049ca356df01806e58fc3006289c139f880259d56942a10b5da"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.2/p2jsongo_0.0.2_linux_386.tar.gz"
      sha256 "8fbce567c36275fdab77daff7ca875f40cfc2db4ba6237a304a8c3c7b4ce671d"
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
