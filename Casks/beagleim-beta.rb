cask 'beagleim-beta' do
  version '4.0-b90'
  sha256 '3f12200a190a0cbfab8359e995feb2db25283489451f341dff76ffd567aabe20'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
