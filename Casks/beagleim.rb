cask 'beagleim' do
  version '4.1'
  sha256 'a59d7bb03fd1b1b201b659760abb0cfc75498a865ac761e00c3f4a03e5598d8d'

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
