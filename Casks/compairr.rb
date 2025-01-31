cask "compairr" do
  version "1.13.0"

  on_intel do
    sha256 "d983b87a6286b7c5207d8f77804214a2f402c3fb1551bd407362b1c1815f428d"
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
  end
  on_arm do
    sha256 "3d7128a417b8ce567d5fe4dd934e08eda00fa04dac88ee58b3ba3a2aa56898dc"
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
  end

  name "CompAIRR"
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"

  on_intel do
    binary "compairr-#{version}-macos-x86_64", target: "compairr"
  end
  on_arm do
    binary "compairr-#{version}-macos-arm64", target: "compairr"
  end
end
