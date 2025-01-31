cask "compairr" do
  arch arm: "arm64",
       intel: "x86_64"
  version "1.13.0"
  sha256 arm: "3d7128a417b8ce567d5fe4dd934e08eda00fa04dac88ee58b3ba3a2aa56898dc",
         intel: "d983b87a6286b7c5207d8f77804214a2f402c3fb1551bd407362b1c1815f428d"
  url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-#{arch}"
  name "CompAIRR"
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"
  binary "compairr-#{version}-macos-#{arch}", target: "compairr"
end
