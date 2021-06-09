class Compairr < Formula
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "4e8d8748c50b23691bdc60d6cce0f5b45e4380343504e29a3499cabae7e5cd07"
  license "AGPL-3.0-or-later"

  resource("source") do
    url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "4e8d8748c50b23691bdc60d6cce0f5b45e4380343504e29a3499cabae7e5cd07"
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
