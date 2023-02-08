cask "compairr" do
  version "1.11.0"

  on_intel do
    sha256 "520b309b597290b02495019e7cddba8d8e59d3795e8159aa278137372a5720d3"
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
  end
  on_arm do
    sha256 "d010d092a44ac4ae591473611173616d65ea80071e75216cdb6babeab04eca5d"
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
