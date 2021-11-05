class Compairr < Formula
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "610752b91c182f94dedf7505da2ebb1be5fdc568c48d111642818511ba8c7ec3"
  license "AGPL-3.0-or-later"

  resource("source") do
    url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.4.1.tar.gz"
    sha256 "610752b91c182f94dedf7505da2ebb1be5fdc568c48d111642818511ba8c7ec3"
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
