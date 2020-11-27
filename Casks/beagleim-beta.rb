cask 'beagleim-beta' do
  version '5.0-b111'
  sha256 'd0f8ac97c9371830691af2196d0e56e92171e697c1dc766c6f2d3ddfc89220e2'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  desc 'XMPP client based on TigaseSwift library'
  homepage 'https://beagle.im/'

  depends_on macos: ">= :mojave"

  caveats "Beta version may be unstable and contains database schema changes which will make it impossible to rollback to older version. We do suggest to copy `beagleim.sqlite` file using Finder to the safe location before starting the new beta version of BeagleIM."
  
  app "BeagleIM (beta).app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
