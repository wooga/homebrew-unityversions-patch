cask 'unity-download-assistant@2017.1.0p5' do
  version '2017.1.0p5,de463fc61bac'
  sha256 '16ad2cc9f6b97ffab4524c3628abc039d06ef9866e883af1ed679a417e4b0ce4'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
