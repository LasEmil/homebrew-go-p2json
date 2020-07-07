require 'rbconfig'
class P2jsongo < Formula
  desc ""
  homepage "https://github.com/LasEmil/p2jsongo"
  version "0.0.6"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.6/p2jsongo_0.0.6_darwin_amd64.zip"
      sha256 "caf51b4c2c6545defae3c4b1c387d8ece4bec1ece75a035aed7afca2806527aa"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.6/p2jsongo_0.0.6_linux_amd64.tar.gz"
      sha256 "3a3a55d348d0d1ac4fa5423884786f0fd69bc5df04da3f38fbb7a672d948ed92"
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
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.6/p2jsongo_0.0.6_darwin_386.zip"
      sha256 "2e5b57b00efa9ead628d80331bbff4e64d1173271690bb508aa8c458dc20a165"
    when /linux/
      url "https://github.com/LasEmil/p2jsongo/releases/download/v0.0.6/p2jsongo_0.0.6_linux_386.tar.gz"
      sha256 "519c4742747694bf3323920ead39dec33789c16a03d705957d153343dc5e2abd"
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
