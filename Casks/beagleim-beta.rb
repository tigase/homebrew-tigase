cask 'beagleim-beta' do
  version '4.0-b94'
  sha256 '972cb55a2e16b7f2eaeb2d175a4e11db79d39cc1ce36aecb09c572c9559678d2'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
