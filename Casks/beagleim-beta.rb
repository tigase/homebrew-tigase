cask 'beagleim-beta' do
  version '5.0-b130'
  sha256 '0b4e9f2672ae6203f6206db8fd23659a60766627db54d8de73e61eb6ce7cae16'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  desc 'XMPP client based on TigaseSwift library'
  homepage 'https://beagle.im/'

  depends_on macos: ">= :catalina"

  caveats "Beta version may be unstable and contain database schema changes which will make it impossible to rollback to older version. We suggest to copy `beagleim.sqlite` file using Finder to the safe location before starting a new beta version of BeagleIM."
  
  app "BeagleIM (beta).app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
