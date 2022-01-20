cask "compairr" do
  version "1.6.0"

  if Hardware::CPU.intel?
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
    sha256 "888665c35ec04429861f3168dbb4f50296e1eeb165f61dd2f14a4456ff0dfdb0"
  else
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
    sha256 "f9ed4cf74a8cb71d27bf4699863238d9cad6bf906a326153863632f27294b441"
  end

  name "CompAIRR"
  desc "Compare Adaptive Immune Receptor Repertoires"
  homepage "https://github.com/uio-bmi/compairr"

  if Hardware::CPU.intel?
    binary "compairr-#{version}-macos-x86_64", target: "compairr"
  else
    binary "compairr-#{version}-macos-arm64", target: "compairr"
  end
end
