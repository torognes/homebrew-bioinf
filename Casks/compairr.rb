cask "compairr" do
  version "1.0.2"

  if Hardware::CPU.intel?
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
    sha256 "8a65a47c8baeda74bc409ba775a66480fe545e8cffcadfa7ea18d89e4c501f11"
  else
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
    sha256 "4745615c521f9bc586f7fbbab8b7907e3adbfb2f1167b9dd07047faad32d199d"
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
