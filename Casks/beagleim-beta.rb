cask 'beagleim-beta' do
  version '6.0-b182'
  sha256 'e0e910ede8789f7ff30ef4752dc1f90957d99c1b79a3f84881c98a1ae87e5c70'

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
