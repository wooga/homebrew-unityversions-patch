cask 'unity-windows-support-for-editor@2017.1.2p3' do
  version '2017.1.2p3,249a06fbaf10'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/249a06fbaf10/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-2017.1.2p3.pkg"
  name 'Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Windows-Support-for-Editor-2017.1.2p3.pkg'

  depends_on cask: 'unity@2017.1.2p3'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.1.2p3"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.1.2p3'
end
