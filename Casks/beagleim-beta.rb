cask 'beagleim-beta' do
  version '4.0-b92'
  sha256 '975a6f328596437524f586b071d414271dba10c5f6b1e4652c4c8f128831585f'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'Tigase BeagleIM beta'
  homepage 'https://beagle.im/'

  app "BeagleIM (beta).app"
end
