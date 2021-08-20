class GccArmLinuxGnueabihf < Formula
  desc "Pre-built ARM/Linux cross compilers for macOS"
  homepage "https://github.com/jaedon/homebrew-gcc-arm-linux-gnueabihf"
  url "https://github.com/jaedon/homebrew-gcc-arm-linux-gnueabihf/releases/download/gcc-11-arm-linux-gnueabihf/gcc-arm-linux-gnueabihf--11.2.0.big_sur.bottle.tar.gz"
  sha256 "41643eff21921c273f7f2d680c7780fabcabf021273b23cc93e30c2fd0560263"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  def install
    prefix.install Dir["11.2.0/*"]
  end

  test do
    system bin/"arm-linux-gnueabihf-gcc", "-v"
  end
end
