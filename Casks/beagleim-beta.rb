cask 'beagleim-beta' do
  version '4.0-b99'
  sha256 '1b2503ef35b2d347ce63813c8ae3ffe8b4a04c87762edf26c847534fedb3b221'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
