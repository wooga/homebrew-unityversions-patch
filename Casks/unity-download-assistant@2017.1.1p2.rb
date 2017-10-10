cask 'unity-download-assistant@2017.1.1p2' do
  version '2017.1.1p2,b8e3f2d6c409'
  sha256 'bead38f79e971593c47d7b72d9182fe892945cc0c84a794e6e5b155ae1967ee3'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
