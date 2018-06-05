cask 'unity-download-assistant@2017.2.1p3' do
  version '2017.2.1p3,273860332f50'
  sha256 '63723344b08eab96c0de64c88d6784d41ce643e20b858625274f2e1607278503'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
