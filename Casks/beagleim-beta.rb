cask 'beagleim-beta' do
  version '4.0-b93'
  sha256 'c44839d8097fda039409721a7a034118d09bc26aee3dbce4146c8d768d49b5e0'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
