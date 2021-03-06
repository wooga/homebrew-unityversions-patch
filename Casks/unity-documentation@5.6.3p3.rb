cask 'unity-documentation@5.6.3p3' do
  version '5.6.3p3,88d4ddf6344a'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/88d4ddf6344a/MacDocumentationInstaller/Documentation.pkg"
  name 'Documentation'
  homepage 'https://unity3d.com/unity/'

  pkg 'Documentation.pkg'

  depends_on cask: 'unity@5.6.3p3'

  preflight do
    if File.exist? "/Applications/Unity"
      FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end

    if File.exist? "/Applications/Unity-5.6.3p3"
      FileUtils.move "/Applications/Unity-5.6.3p3", '/Applications/Unity'
    end
  end

  postflight do
    if File.exist? '/Applications/Unity'
      FileUtils.move '/Applications/Unity', "/Applications/Unity-5.6.3p3"
    end

    if File.exist? '/Applications/Unity.temp'
      FileUtils.move '/Applications/Unity.temp', '/Applications/Unity'
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.3p3'
end
