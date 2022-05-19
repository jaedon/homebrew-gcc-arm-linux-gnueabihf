class GccArmLinuxGnueabihf < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/homebrew-gcc-arm-linux-gnueabihf"
  url "https://github.com/jaedon/homebrew-gcc-arm-linux-gnueabihf/releases/download/gcc-12-arm-linux-gnueabihf/gcc-arm-linux-gnueabihf--12.1.0.big_sur.bottle.tar.gz"
  sha256 "9781dab02d3dc6147c12025bc8123c7e06aee8224a69893c9cadc1e1589b7ca4"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  keg_only :versioned_formula

  def install
    prefix.install Dir["12.1.0/*"]
  end

  test do
    system bin/"arm-linux-gnueabihf-gcc", "-v"
  end
end
