cask 'beagleim-beta' do
  version '4.0-b86'
  sha256 'ebce56db61f9c432466009a77d577c068c6a69f500b872574a17476f22f3aaf8'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
