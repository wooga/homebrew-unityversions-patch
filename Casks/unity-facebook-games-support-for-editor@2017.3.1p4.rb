cask 'unity-facebook-games-support-for-editor@2017.3.1p4' do
  version '2017.3.1p4,7f25373c3e03'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/7f25373c3e03/MacEditorTargetInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.3.1p4.pkg"
  name 'Facebook Gameroom Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Facebook-Games-Support-for-Editor-2017.3.1p4.pkg'

  depends_on cask: 'unity@2017.3.1p4'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-2017.3.1p4"
      FileUtils.move "/Applications/Unity-2017.3.1p4", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-2017.3.1p4"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.1p4/PlaybackEngines/Facebook'
end
