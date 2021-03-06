cask 'unity-samsung-tv-support-for-editor@2017.2.1p3' do
  version '2017.2.1p3,273860332f50'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/273860332f50/MacEditorTargetInstaller/UnitySetup-Samsung-TV-Support-for-Editor-2017.2.1p3.pkg"
  name 'SamsungTV Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Samsung-TV-Support-for-Editor-2017.2.1p3.pkg'

  depends_on cask: 'unity@2017.2.1p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.2.1p3"
      FileUtils.move "/Applications/Unity-2017.2.1p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.2.1p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.2.1p3/PlaybackEngines/STVPlayer'
end
