class Compairr < Formula
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "ae591548591900f30097bda6134ecb6f422df15de105dbf8809562a7cbd3c44b"
  license "AGPL-3.0-or-later"

  resource("source") do
    url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.6.0.tar.gz"
    sha256 "ae591548591900f30097bda6134ecb6f422df15de105dbf8809562a7cbd3c44b"
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    resource("source").stage do
      system "compairr", "-m", "test/seta.tsv", "test/setb.tsv", "-d", "1", "-l", "compairr.log", "-o", "output.tsv"
      system "diff", "-q", "output.tsv", "test/expected.tsv"
      ohai "Test completed successfully!"
    end
  end
end
