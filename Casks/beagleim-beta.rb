cask 'beagleim-beta' do
  version '4.0-b84'
  sha256 '7fb2d618c5116ef9f153e083ec0d490cb743a02154188e16a6715409635f1143'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
