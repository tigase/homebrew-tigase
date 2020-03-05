cask 'beagleim-beta' do
  version 'v4.0b80'
  sha256 '47b2922873dff615944ee2fb2eac20168f22425a82dcd2fe30e70aaabaf39993'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM #{version} beta.app"
end
