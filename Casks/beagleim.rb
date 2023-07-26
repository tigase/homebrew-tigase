cask 'beagleim' do
  version '5.3.4'
  sha256 'a9f454dc35d1638dc821f9dc3db51e6ebce5cdf32411ca86cf038d69528ae48e'

  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  name 'Tigase BeagleIM'
  desc 'XMPP client based on TigaseSwift library'
  homepage 'https://beagle.im/'

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :catalina"

  app "BeagleIM.app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
