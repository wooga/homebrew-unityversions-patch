cask 'unity-download-assistant@5.6.3p3' do
  version '5.6.3p3,88d4ddf6344a'
  sha256 '218e59099e0441fccf46df6e36ebce50da59241c38d44f6b6db23e20e2f2857c'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
