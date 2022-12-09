cask "compairr" do
  version "1.9.0"

  if Hardware::CPU.intel?
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
    sha256 "a2e1b2c9772ee15ffe0fe8fc1d06b2d6f96439f4db90cb8d33961b7f8127712c"
  else
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
    sha256 "57555c7f246a6d33689039e1d629372f661a0e783d6e886c0dc09f7ae2350d3d"
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
