cask 'unity-windows-support-for-editor@2017.3.1p2' do
  version '2017.3.1p2,fd9fec26f216'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/fd9fec26f216/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-2017.3.1p2.pkg"
  name 'Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Windows-Support-for-Editor-2017.3.1p2.pkg'

  depends_on cask: 'unity@2017.3.1p2'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.3.1p2"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.1p2'
end
