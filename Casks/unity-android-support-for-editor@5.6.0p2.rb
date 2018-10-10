cask 'unity-android-support-for-editor@5.6.0p2' do
  version '5.6.0p2,bbd5ca01a0ea'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/bbd5ca01a0ea/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-5.6.0p2.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-5.6.0p2.pkg'

  depends_on cask: 'unity@5.6.0p2'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-5.6.0p2"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.0p2'
end
