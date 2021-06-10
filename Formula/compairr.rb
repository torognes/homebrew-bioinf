class Compairr < Formula
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "831e7598589763eeb5ccf9f22373e8d7f05a65a8851b422b0b7f571067f739a5"
  license "AGPL-3.0-or-later"

  resource("source") do
    url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "831e7598589763eeb5ccf9f22373e8d7f05a65a8851b422b0b7f571067f739a5"
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
