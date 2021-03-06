cask 'unity-linux-support-for-editor@5.5.3p2' do
  version '5.5.3p2,f15b2772e4d0'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/f15b2772e4d0/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-5.5.3p2.pkg"
  name 'Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Linux-Support-for-Editor-5.5.3p2.pkg'

  depends_on cask: 'unity@5.5.3p2'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.5.3p2"
      FileUtils.move "/Applications/Unity-5.5.3p2", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.5.3p2"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.5.3p2/PlaybackEngines/LinuxStandaloneSupport'
end
