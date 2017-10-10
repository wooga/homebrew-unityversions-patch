cask 'unity-download-assistant@5.6.3p4' do
  version '5.6.3p4,fbe8bd37d7fa'
  sha256 'b86d6e3cf5be31a98ed5a3036afca4e4d530fc26d59341225c1b7ec498d7cd5e'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
