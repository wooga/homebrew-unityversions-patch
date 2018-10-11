cask 'unity@2017.3.0p2' do
  version '2017.3.0p2,b91e4c5f54ad'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/b91e4c5f54ad/MacEditorInstaller/Unity.pkg"
  name 'Unity 2017.3.0p2'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.3.0p2"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.0p2'
end
