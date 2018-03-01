cask 'unity-download-assistant@2017.2.1p4' do
  version '2017.2.1p4,1992a1ed2d78'
  sha256 '08bad5e7fcfec7979e0031c6ace90b24d3f1998e7ea58413f72e759dd5d08652'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
