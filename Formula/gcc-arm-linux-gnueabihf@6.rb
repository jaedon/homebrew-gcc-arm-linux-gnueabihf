class GccArmLinuxGnueabihfAT6 < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/gcc-arm-linux-gnueabihf"
  url "https://github.com/jaedon/gcc-arm-linux-gnueabihf/releases/download/gcc-6-arm-linux-gnueabihf/gcc-arm-linux-gnueabihf--6.5.0.big_sur.bottle.tar.gz"
  sha256 "cd32c1b214cc54a76ed65c010d191d7ae633db03485353555c543a46c0a96246"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  keg_only :versioned_formula

  def install
    prefix.install Dir["6.5.0/*"]
  end

  test do
    system bin/"arm-linux-gnueabihf-gcc", "-v"
  end
end
