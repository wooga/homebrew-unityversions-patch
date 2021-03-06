cask 'unity-webgl-support-for-editor@5.6.0p3' do
  version '5.6.0p3,f8dcc233883f'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/f8dcc233883f/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.0p3.pkg"
  name 'WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-WebGL-Support-for-Editor-5.6.0p3.pkg'

  depends_on cask: 'unity@5.6.0p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.6.0p3"
      FileUtils.move "/Applications/Unity-5.6.0p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.6.0p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.0p3/PlaybackEngines/WebGLSupport'
end
