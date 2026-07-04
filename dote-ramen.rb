class DoteRamen < Formula
  desc "Animated dot-art ramen command"
  homepage "https://github.com/ChiOtter/homebrew-doteRamen"
  url "https://raw.githubusercontent.com/ChiOtter/homebrew-doteRamen/main/doteRamen.c"
  sha256 "cecd3664f77c2d5ab973f52f2904e5cfcb203f65cc0de5f8f3efde34a6a20deb"
  version "1.0.0"

  def install
    system ENV.cc, "doteRamen.c", "-o", "doteRamen"
    bin.install "doteRamen"
  end
end
