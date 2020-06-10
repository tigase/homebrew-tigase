cask 'beagleim-beta' do
  version '4.0-b97'
  sha256 '0492fb1f69f482ba63fe698b9aa658b31bb3d02f7d8883c70dd2e1c506a6c380'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
