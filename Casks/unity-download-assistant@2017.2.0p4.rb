cask 'unity-download-assistant@2017.2.0p4' do
  version '2017.2.0p4,0c3a6a294e34'
  sha256 '982d9c84bf9cf5aedfafbb027530e45c5ccb064b03a530df2fbfca1ac5342022'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
