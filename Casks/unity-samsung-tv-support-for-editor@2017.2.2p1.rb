cask 'unity-samsung-tv-support-for-editor@2017.2.2p1' do
  version '2017.2.2p1,31794ac12ad1'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/31794ac12ad1/MacEditorTargetInstaller/UnitySetup-Samsung-TV-Support-for-Editor-2017.2.2p1.pkg"
  name 'SamsungTV Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Samsung-TV-Support-for-Editor-2017.2.2p1.pkg'

  depends_on cask: 'unity@2017.2.2p1'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.2.2p1"
      FileUtils.move "/Applications/Unity-2017.2.2p1", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.2.2p1"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.2p1/PlaybackEngines/STVPlayer'
end
