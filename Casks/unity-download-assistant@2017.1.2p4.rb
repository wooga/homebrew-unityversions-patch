cask 'unity-download-assistant@2017.1.2p4' do
  version '2017.1.2p4,d597d0924185'
  sha256 '9a59af9008721586b2a6b235661ed71cc46b11569b4d36df765e3f2c220f6603'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
