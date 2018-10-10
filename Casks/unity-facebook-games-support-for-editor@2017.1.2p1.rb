cask 'unity-facebook-games-support-for-editor@2017.1.2p1' do
  version '2017.1.2p1,c2ed782bb21e'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/c2ed782bb21e/MacEditorTargetInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.1.2p1.pkg"
  name 'Facebook Gameroom Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Facebook-Games-Support-for-Editor-2017.1.2p1.pkg'

  depends_on cask: 'unity@2017.1.2p1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.1.2p1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.1.2p1'
end
