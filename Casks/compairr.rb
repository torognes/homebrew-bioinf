cask "compairr" do
  version "1.5.1"

  if Hardware::CPU.intel?
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
    sha256 "306d6341301425985f53a2d01f46025527b15c1e9c67ac351b4265fce6aa13c8"
  else
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
    sha256 "b95df9bb252c8e8cb8c0b1c22e4e8674e47bc9b34ccc9fbd950cf67cad8d7550"
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
