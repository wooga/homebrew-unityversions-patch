cask 'unity-download-assistant@2017.1.1p1' do
  version '2017.1.1p1,007fc09e806c'
  sha256 'f82814a3286d6209815cda0c7996afe65b6a338808d627491e3fab887d9b0e1b'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
