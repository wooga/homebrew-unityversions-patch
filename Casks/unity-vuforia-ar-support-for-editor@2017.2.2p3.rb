cask 'unity-vuforia-ar-support-for-editor@2017.2.2p3' do
  version '2017.2.2p3,7706f9f606ca'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/7706f9f606ca/MacEditorTargetInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2017.2.2p3.pkg"
  name 'Vuforia Augmented Reality Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Vuforia-AR-Support-for-Editor-2017.2.2p3.pkg'

  depends_on cask: 'unity@2017.2.2p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.2.2p3"
      FileUtils.move "/Applications/Unity-2017.2.2p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.2.2p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.2p3/PlaybackEngines/VuforiaSupport'
end
