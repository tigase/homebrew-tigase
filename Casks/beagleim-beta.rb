cask 'beagleim-beta' do
  version '5.3-b157'
  sha256 '56f05a021b2e946e37e2eb4601f43ad648234290aeec97b0d3953d5203e569b8'

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
