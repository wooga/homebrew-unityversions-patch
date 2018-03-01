cask 'unity-download-assistant@2017.1.3p1' do
  version '2017.1.3p1,02d73f71d3bd'
  sha256 'edbc8179eb80098550763d3c553dd60a76f2369f7d734c260eb6b59957ba9c6e'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
