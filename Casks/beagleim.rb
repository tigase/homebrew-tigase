cask 'beagleim' do
  version '4.1'
  sha256 '45c1cef3cbd3004254ae7e29bf3a703c4ddb787984da2d924dd898cf8826f5fa'

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
