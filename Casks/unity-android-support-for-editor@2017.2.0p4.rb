cask 'unity-android-support-for-editor@2017.2.0p4' do
  version '2017.2.0p4,0c3a6a294e34'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/0c3a6a294e34/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-2017.2.0p4.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-2017.2.0p4.pkg'

  depends_on cask: 'unity@2017.2.0p4'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.2.0p4"
      FileUtils.move "/Applications/Unity-2017.2.0p4", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.2.0p4"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.0p4/PlaybackEngines/AndroidPlayer'
end
