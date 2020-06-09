cask 'beagleim-beta' do
  version '4.0-b96'
  sha256 '34d3f6255dc267f30f4e78035d605881ed6b7745e780b41c483a7f67f9086138'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
