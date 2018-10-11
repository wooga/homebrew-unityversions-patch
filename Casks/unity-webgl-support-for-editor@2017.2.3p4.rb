cask 'unity-webgl-support-for-editor@2017.2.3p4' do
  version '2017.2.3p4,2f2d0e6b4eb5'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/2f2d0e6b4eb5/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-2017.2.3p4.pkg"
  name 'WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-WebGL-Support-for-Editor-2017.2.3p4.pkg'

  depends_on cask: 'unity@2017.2.3p4'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.2.3p4"
      FileUtils.move "/Applications/Unity-2017.2.3p4", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.2.3p4"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.3p4/PlaybackEngines/WebGLSupport'
end
