cask 'unity-tizen-support-for-editor@5.6.3p4' do
  version '5.6.3p4,fbe8bd37d7fa'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/fbe8bd37d7fa/MacEditorTargetInstaller/UnitySetup-Tizen-Support-for-Editor-5.6.3p4.pkg"
  name 'Tizen Build Support'
  homepage 'https://unity3d.com/unity/'

  pkg 'UnitySetup-Tizen-Support-for-Editor-5.6.3p4.pkg'

  depends_on cask: 'unity@5.6.3p4'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.6.3p4"
      FileUtils.move "/Applications/Unity-5.6.3p4", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.6.3p4"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.3p4'
end
