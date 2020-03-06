cask 'beagleim' do
  version '3.7'
  sha256 'ed051bbdbdb549d2a45cb1e14e10b17b96eba6a6a72aa10d18873876884c3cf6'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM'
  homepage 'https://beagle.im/'

  app "BeagleIM.app"
end
