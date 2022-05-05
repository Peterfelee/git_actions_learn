fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios adhoc
```
fastlane ios adhoc
```
Build AdHoc ipa and upload to OTA

make sure to run following cmd to install needed plugins before run

```
fastlane install_plugins
```


### ios store
```
fastlane ios store
```
Build Appstore ipa and upload to OTA

make sure to run following cmd to install needed plugins before run

```
fastlane install_plugins
```


### ios beta
```
fastlane ios beta
```
Build Appstore ipa and upload to TestFlight



----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
