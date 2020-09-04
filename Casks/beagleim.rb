cask 'beagleim' do
  version '4.0'
  sha256 '64ba108ef20f2d6f192270a6eb60e4001a2ea3cf039a183564f04c8704d09f30'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM'
  homepage 'https://beagle.im/'

  depends_on macos: ">= :mojave"

  app "BeagleIM.app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
