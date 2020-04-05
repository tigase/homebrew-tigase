cask 'beagleim-beta' do
  version '4.0-b87'
  sha256 '9e49a6cff21dfcd582699fec2225af267246b9d72fa9fe6db8655b4c19d9d30b'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
