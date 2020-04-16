cask 'beagleim-beta' do
  version '4.0-b88'
  sha256 '56d9ee267bf631ba77ceed10391ef6e3bed75b497ad167c57769997f573264a7'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
