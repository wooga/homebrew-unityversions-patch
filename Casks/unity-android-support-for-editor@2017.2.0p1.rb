cask 'unity-android-support-for-editor@2017.2.0p1' do
  version '2017.2.0p1,24fd82ce573a'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/24fd82ce573a/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-2017.2.0p1.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-2017.2.0p1.pkg'

  depends_on cask: 'unity@2017.2.0p1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.2.0p1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.0p1'
end
