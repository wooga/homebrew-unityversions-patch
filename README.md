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
brew cask install unity@2017.3.1p4
```

-or-

```bash
brew cask install unity-android-support-for-editor@2017.3.1p4
```

Unity will be install under `/Applications/Unity-$VERSION`. You can install multiple versions at the same time. All support packages will be installed in the parent Unity directory. Means:

`unity-android-support-for-editor@2017.3.1p4` --> `/Applications/Unity-2017.3.1p4/PlaybackEngines/`

If you have a unity version installed under `/Applications/Unity/` it will be moved to
`/Applications/Unity.temp` for the time of the installation.

Unity Versions available
------------------------

| Version    |
| ---------: |
|    5.5.2p1 |
|    5.5.3p2 |
|    5.6.0p2 |
|    5.6.0p3 |
|    5.6.1p1 |
|    5.6.3p3 |
|    5.6.3p4 |
|    5.6.4p1 |
| 2017.1.0p1 |
| 2017.1.0p2 |
| 2017.1.0p3 |
| 2017.1.0p5 |
| 2017.1.1p1 |
| 2017.1.1p2 |
| 2017.1.1p3 |
| 2017.1.1p4 |
| 2017.1.2p1 |
| 2017.1.2p2 |
| 2017.1.2p3 |
| 2017.1.2p4 |
| 2017.1.3p1 |
| 2017.1.3p2 |
| 2017.1.3p3 |
| 2017.1.3p4 |
| 2017.1.4p1 |
| 2017.1.4p2 |
| 2017.2.0p1 |
| 2017.2.0p2 |
| 2017.2.0p3 |
| 2017.2.0p4 |
| 2017.2.1p1 |
| 2017.2.1p2 |
| 2017.2.1p3 |
| 2017.2.1p4 |
| 2017.2.2p1 |
| 2017.2.2p2 |
| 2017.2.2p3 |
| 2017.2.2p4 |
| 2017.2.3p1 |
| 2017.2.3p2 |
| 2017.2.3p3 |
| 2017.2.3p4 |
| 2017.3.0p1 |
| 2017.3.0p2 |
| 2017.3.0p3 |
| 2017.3.0p4 |
| 2017.3.1p1 |
| 2017.3.1p2 |
| 2017.3.1p3 |
| 2017.3.1p4 |


Adding a new Version
--------------------


License
-------
[MIT License](LICENSE) Copyright (C) 2017 Wooga