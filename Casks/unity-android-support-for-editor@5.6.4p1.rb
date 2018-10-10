cask 'unity-android-support-for-editor@5.6.4p1' do
  version '5.6.4p1,e67c4b7007d5'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/e67c4b7007d5/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-5.6.4p1.pkg"
  name 'Android Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Android-Support-for-Editor-5.6.4p1.pkg'

  depends_on cask: 'unity@5.6.4p1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-5.6.4p1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.4p1'
end
