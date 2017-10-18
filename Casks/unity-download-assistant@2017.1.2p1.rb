cask 'unity-download-assistant@2017.1.2p1' do
  version '2017.1.2p1,c2ed782bb21e'
  sha256 '98533598566574b0f23954a2eef9f0d64d642ccc06d092c29430d2d8bba2d1ee'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
