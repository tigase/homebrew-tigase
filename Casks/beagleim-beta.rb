cask 'beagleim-beta' do
  version '4.0-b95'
  sha256 'd0501cb8052add4a8a594f09420444f4af6aae8c053a85c7a3b1a5e51bb3b539'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
