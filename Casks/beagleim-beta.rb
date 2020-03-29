cask 'beagleim-beta' do
  version '4.0-b85'
  sha256 '43d7184e338ffa03773a03f51caa8ab967999c40fe226d59177309ec8393db0d'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
