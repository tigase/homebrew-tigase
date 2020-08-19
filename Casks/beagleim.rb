cask 'beagleim' do
  version '3.7.1'
  sha256 '1b00a4686bd146ec40b7bae1044a8bf81b5bd0ad86574a825e52a4fa7382f7c3'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM'
  homepage 'https://beagle.im/'

  depends_on macos: ">= :mojave"

  app "BeagleIM.app"
end
