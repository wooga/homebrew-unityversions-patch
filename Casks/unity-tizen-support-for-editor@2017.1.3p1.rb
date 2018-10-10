cask 'unity-tizen-support-for-editor@2017.1.3p1' do
  version '2017.1.3p1,02d73f71d3bd'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/02d73f71d3bd/MacEditorTargetInstaller/UnitySetup-Tizen-Support-for-Editor-2017.1.3p1.pkg"
  name 'Tizen Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Tizen-Support-for-Editor-2017.1.3p1.pkg'

  depends_on cask: 'unity@2017.1.3p1'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-2017.1.3p1"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-2017.1.3p1'
end
