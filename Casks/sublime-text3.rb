cask :v1 => 'sublime-text3' do
  version 'Build 3065'
  sha256 '373dbfcddab7fb288351763402361cd4045f4a9510eb32f81938d0c156d161c3'

  # rackcdn.com is the official download host per the vendor homepage
  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20#{version.sub(' ', '%20')}.dmg"
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          :sha256 => 'bb8df68fe6a87966c4662948f4f147ac5dd0d1cd3a8d5342c56a11a018ff81e9'
  name 'Sublime Text'
  homepage 'http://www.sublimetext.com/3'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'

  uninstall :quit => 'com.sublimetext.3'

  zap :delete => [
                  '~/Library/Application Support/Sublime Text 3',
                  '~/Library/Caches/com.sublimetext.3',
                  '~/Library/Preferences/com.sublimetext.3.plist',
                  '~/Library/Saved Application State/com.sublimetext.3.savedState'
                 ]

  conflicts_with :cask => 'caskroom/versions/sublime-text-dev'

  caveats do
    files_in_usr_local
  end
end
