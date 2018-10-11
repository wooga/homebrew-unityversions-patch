cask 'unity-ios-support-for-editor@5.6.1p1' do
  version '5.6.1p1,74c1f4917542'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/74c1f4917542/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.6.1p1.pkg"
  name 'iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-iOS-Support-for-Editor-5.6.1p1.pkg'

  depends_on cask: 'unity@5.6.1p1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.6.1p1"
      FileUtils.move "/Applications/Unity-5.6.1p1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.6.1p1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.1p1/PlaybackEngines/iOSSupport'
end
