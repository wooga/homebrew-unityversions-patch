cask 'unity@2017.3.1p1' do
  version '2017.3.1p1,6c5ba423732e'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/6c5ba423732e/MacEditorInstaller/Unity.pkg"
  name 'Unity 2017.3.1p1'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.3.1p1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.3.1p1'
end
