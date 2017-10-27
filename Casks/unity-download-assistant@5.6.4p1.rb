cask 'unity-download-assistant@5.6.4p1' do
  version '5.6.4p1,e67c4b7007d5'
  sha256 '395c748767fc80de323364e32668634ddc9622352a34b8d91ae73b0f9bf50be5'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
