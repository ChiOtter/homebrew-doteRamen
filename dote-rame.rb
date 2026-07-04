class DoteRame < Formula
  desc "Animated dot-art ramen command"
  homepage "https://github.com/ChiOtter/homebrew-doteRamen"
  url "https://raw.githubusercontent.com/ChiOtter/homebrew-doteRamen/main/doteRame.c"
  sha256 "69ee8183e94bada02561de9c676604fa07eef131f7bb4a4c873fe8fca33f68c9"
  version "1.0.0"

  def install
    system ENV.cc, "doteRame.c", "-o", "doteRame"
    bin.install "doteRame"
  end
end
