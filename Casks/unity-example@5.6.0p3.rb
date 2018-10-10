cask 'unity-example@5.6.0p3' do
  version '5.6.0p3,f8dcc233883f'
  sha256 :no_check

  url "https://download.unity3d.com/download_unity/f8dcc233883f/MacExampleProjectInstaller/Examples.pkg"
  name 'Example Project'
  homepage 'https://unity3d.com/unity/'

  pkg 'Examples.pkg'

  depends_on cask: 'unity@5.6.0p3'

  preflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity.temp"
    end
  end

  postflight do
    if File.exist? "/Applications/Unity"
        FileUtils.move "/Applications/Unity", "/Applications/Unity-5.6.0p3"
    end

    if File.exist? "/Applications/Unity.temp"
        FileUtils.move "/Applications/Unity.temp", "/Applications/Unity"
    end
  end

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity-5.6.0p3'
end
