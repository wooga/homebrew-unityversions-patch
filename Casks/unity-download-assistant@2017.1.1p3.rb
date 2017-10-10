cask 'unity-download-assistant@2017.1.1p3' do
  version '2017.1.1p3,929150d2fa14'
  sha256 '7347f8c7ba6478030ff2674b247df29276f177c50bf0caf602d2487fb12edc52'

  url "http://beta.unity3d.com/download/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
