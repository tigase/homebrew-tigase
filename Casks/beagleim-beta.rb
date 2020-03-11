cask 'beagleim-beta' do
  version '4.0-b83'
  sha256 'f7a02b2a6fcfd07b10c91b9a43c790f2ac2519a0b5fa0e0e08f0ce792a7ad169'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
