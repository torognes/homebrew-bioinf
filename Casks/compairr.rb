cask "compairr" do
  version "1.6.1"

  if Hardware::CPU.intel?
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-x86_64"
    sha256 "0706ae71afeb5e6b8dbed0ab3a5622f8f775233c43342052c1e61d6b0e089a01"
  else
    url "https://github.com/uio-bmi/compairr/releases/download/v#{version}/compairr-#{version}-macos-arm64"
    sha256 "f179859acd0f6de1c28c72454a2c99cae393f1d1f141144b88e54000d5710731"
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
