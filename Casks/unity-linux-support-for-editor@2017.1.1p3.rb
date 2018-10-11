cask 'unity-linux-support-for-editor@2017.1.1p3' do
  version '2017.1.1p3,929150d2fa14'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/929150d2fa14/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1p3.pkg"
  name 'Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Linux-Support-for-Editor-2017.1.1p3.pkg'

  depends_on cask: 'unity@2017.1.1p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.1.1p3"
      FileUtils.move "/Applications/Unity-2017.1.1p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.1.1p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.1.1p3'
end
