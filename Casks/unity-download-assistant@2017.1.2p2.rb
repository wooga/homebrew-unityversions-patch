cask 'unity-download-assistant@2017.1.2p2' do
  version '2017.1.2p2,eba6bfec1bb2'
  sha256 '83641c18cb59b10162af5704a7105816d101861afd74537ccf5cd8cb24a96bae'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
