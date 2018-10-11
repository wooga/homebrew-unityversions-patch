cask 'unity-webgl-support-for-editor@2017.3.0p3' do
  version '2017.3.0p3,bfcbae508940'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/bfcbae508940/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-2017.3.0p3.pkg"
  name 'WebGL Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-WebGL-Support-for-Editor-2017.3.0p3.pkg'

  depends_on cask: 'unity@2017.3.0p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.3.0p3"
      FileUtils.move "/Applications/Unity-2017.3.0p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.3.0p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.0p3'
end
