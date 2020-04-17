cask 'beagleim-beta' do
  version '4.0-b89'
  sha256 '902fd3980f8789321bcd04d5de49a60e788e855779ba2457bbcd06ea5d119b5b'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
