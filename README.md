homebrew-unityversions-patch
============================

[![Build Status](https://travis-ci.org/wooga/homebrew-unityversions-patch.svg?branch=master)](https://travis-ci.org/wooga/homebrew-unityversions-patch)
Unity patch version Brew Cask 

Usage
-----

To install unity versions form this cask simply tap this repository

```bash
brew tap wooga/unityversions-patch
```

Now you can install any version hosted as cask with

```bash
brew cask install unity@2017.1.2p2
```

-or-

```bash
brew cask install unity-android-support-for-editor@2017.1.2p2
```

Unity will be install under `/Applications/Unity-$VERSION`. You can install multiple versions at the same time. All support packages will be installed in the parent Unity directory. Means:

`unity-android-support-for-editor@2017.1.2p2` --> `/Applications/Unity-2017.1.2p2/PlaybackEngines/`

If you have a unity version installed under `/Applications/Unity/` it will be moved to
`/Applications/Unity.temp` for the time of the installation.

Unity Versions available
------------------------

| Version    |
| ---------: |
|    5.5.2p1 |
|    5.5.3p2 |
|    5.6.0p2 |
|    5.6.1p1 |
|    5.6.3p3 |
|    5.6.3p4 |
|    5.6.4p1 |
| 2017.1.0p5 |
| 2017.1.1p1 |
| 2017.1.1p2 |
| 2017.1.1p3 |
| 2017.1.1p4 |
| 2017.1.2p1 |
| 2017.1.2p2 |


Adding a new Version
--------------------


License
-------
[MIT License](LICENSE) Copyright (C) 2017 Wooga