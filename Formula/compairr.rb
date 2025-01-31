class Compairr < Formula
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.13.0.tar.gz"
  sha256 "a4c6a72a52b80a2a449ed3e22e5a58c86a08497ef9d3608a10ab19fa0f69168b"
  license "AGPL-3.0-or-later"

  resource("source") do
    url "https://github.com/uio-bmi/compairr/archive/refs/tags/v1.13.0.tar.gz"
    sha256 "a4c6a72a52b80a2a449ed3e22e5a58c86a08497ef9d3608a10ab19fa0f69168b"
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
