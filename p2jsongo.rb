require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.3/p2jsongo_0.0.3_darwin_amd64.zip"
      sha256 "32ca57c198f836c3ccd07e60c1c6950af638ee5601f0f21f2ef34792a80fe06d"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.3/p2jsongo_0.0.3_linux_amd64.tar.gz"
      sha256 "ffbea050f61ff7c9591f8c08aa64153107bb963f8a3d13b15b035922d0b64231"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.3/p2jsongo_0.0.3_darwin_386.zip"
      sha256 "6b67b34dd0b9010a6572ac8897cda97dbf10e707a7ab84796bd2869088a52e48"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.3/p2jsongo_0.0.3_linux_386.tar.gz"
      sha256 "ed464fc16d3c239c3241728b2601ed0fc806338ed78a38623d60214b1fe7f798"
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
