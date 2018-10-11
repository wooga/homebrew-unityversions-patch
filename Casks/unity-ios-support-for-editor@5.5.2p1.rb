cask 'unity-ios-support-for-editor@5.5.2p1' do
  version '5.5.2p1,9360c5517afe'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/9360c5517afe/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.5.2p1.pkg"
  name 'iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-iOS-Support-for-Editor-5.5.2p1.pkg'

  depends_on cask: 'unity@5.5.2p1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.5.2p1"
      FileUtils.move "/Applications/Unity-5.5.2p1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.5.2p1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.5.2p1/PlaybackEngines/iOSSupport'
end
