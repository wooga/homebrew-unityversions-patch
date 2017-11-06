cask 'unity-download-assistant@5.6.0p3' do
  version '5.6.0p3,f8dcc233883f'
  sha256 '50a73dd9aed528f9b68effba9404aceec7996d62b6d5e9ef100d493729aa2dab'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
