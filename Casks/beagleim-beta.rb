cask 'beagleim-beta' do
  version '6.0-b187'
  sha256 '73a8f271467698832e029358878e5c4e047569f3869642edb00e362bd764aee2'

  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  name 'Tigase BeagleIM beta'
  desc 'XMPP client based on TigaseSwift library'
  homepage 'https://beagle.im/'

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+-b\d+)/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        # Only choose prereleases
        next if release['draft'] || !release['prerelease']

        version_match = release['tag_name']&.match(regex)
        next if version_match.blank?

        version_match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  caveats "Beta versions may be unstable and contain database schema changes which cannot be rolled back to an older version. We suggest using Finder to copy the `beagleim.sqlite` file to a safe location before starting a new beta version of BeagleIM."

  app "BeagleIM (beta).app"

  zap trash: [
    "~/Library/Saved Application State/org.tigase.messenger.BeagleIM.savedState",
    "~/Library/Application Scripts/org.tigase.messenger.BeagleIM",
    "~/Library/Containers/org.tigase.messenger.BeagleIM",
  ]
end
