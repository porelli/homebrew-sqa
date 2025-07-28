cask 'slowquitapps' do
  version '0.8.2'
  sha256 'fef97f7e2cc6c82cc96940e55085a49dda916232d04ecfc0909a639bb4d33f89'

  url "https://github.com/porelli/SlowQuitApps/releases/download/v#{version}/SlowQuitApps-#{version}.zip"
  name 'SlowQuitApps'
  homepage 'https://github.com/dteoh/SlowQuitApps'
  livecheck do
    url 'https://github.com/porelli/SlowQuitApps/releases.atom'
    strategy :sparkle
  end

  depends_on macos: '>= :sonoma'

  app 'SlowQuitApps.app'
  binary "#{appdir}/SlowQuitApps.app/Contents/MacOS/sqa"

  caveats <<-DESC
  Accessibility permissions must be reset after updating or re-installing.

  Instructions are available in the README at #{homepage}
  DESC
end
