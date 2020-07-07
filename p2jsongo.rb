require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.5"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.5/p2jsongo_0.0.5_darwin_amd64.zip"
      sha256 "66314fee088f7570aa2d38cf94753446359311a12bad43d9bac5113e40c9e0b1"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.5/p2jsongo_0.0.5_linux_amd64.tar.gz"
      sha256 "343cd39074ef96a4da7d4d15a101805276533f08e05e9f56361fca0a154b618a"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.5/p2jsongo_0.0.5_darwin_386.zip"
      sha256 "35c1ea9744c4d581e889292891d4c97e586b41771bb4932617c24d9471d34250"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.5/p2jsongo_0.0.5_linux_386.tar.gz"
      sha256 "ba714d9d294645c68643bdc1368a254491826ada63481ffbbd564c29603811d8"
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
