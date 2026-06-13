cask 'beagleim' do
  version '6.0.1'
  sha256 '74994de3362d972ce0c0d05d6afa5c7cd6931815ab69474d9e29fc1154a4432d'

  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  name 'Tigase BeagleIM'
  desc 'XMPP client based on TigaseSwift library'
  homepage 'https://beagle.im/'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "BeagleIM.app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
