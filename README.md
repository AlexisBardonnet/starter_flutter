# Starter Flutter 
[starter_flutter](https://bitbucket.org/tizdev/starter_flutter/src/)

---

- Flutter 1.22.2
- Status `DEV` / `TEST` / `PROD`

---

## Table of contents

* [About the project](#markdown-header-about-the-project)
    * [Contributors](#markdown-header-contributors)
    * [Description](#markdown-header-description)
    * [Dependencies](#markdown-header-dependencies)
    * [Environments](#markdown-header-environments)
* [Getting started](#markdown-header-getting-started)
    * [Prerequisites](#markdown-header-prerequisites)
    * [Installation](#markdown-header-installation)
    * [Credentials](#markdown-header-credentials)
* [Test and deploy](#markdown-header-test-and-deploy)
    * [Run](#markdown-header-run)
    * [Build and deploy](#markdown-header-build-and-deploy)
        * [Android](#markdown-header-android)
        * [iOS](#markdown-header-ios)
* [Frequently asked questions](#markdown-header-frequently-asked-questions)


---

## About the project

### Contributors

 * Developers : xxxx XXXX, xxxx XXXX
 * Designer : xxxx XXXX
 * Project manager : xxxx XXXX
 * Marketing : xxxx XXXX
 * Commercial : xxxx XXXX


### Description

![Screenshot](https://i.ibb.co/YDKNjBm/screenshot.png)

 * Starter for Flutter projects 
 * Contain a splashscreen and a main page
 * Implementing routing 
 * Implementing stringService & errorService 

### Dependencies

|     Dependency     | Version  |
| ------------------ | -------- |
| flutter_svg        | 0.18.0   |
| http               | 0.12.0+2 |
| provider           | 4.3.2+2  |
| shared_preferences | 0.5.7+1  |


### Environments

 * Android : [Play store url]
 * iOS : [App Store url]

Back-Office : https://example.com/

---

## Getting started
### Prerequisites

The project need to have the followoing software installed to work.

 * [npm](https://www.npmjs.com/get-npm)
 * [Flutter](https://flutter.dev/docs/get-started/install), set on Stable channel
 * [Android Studio](https://developer.android.com/studio)
 * [XCode](https://apps.apple.com/fr/app/xcode/id497799835?mt=12)

Install [flutter command on your PATH](https://www.architectryan.com/2012/10/02/add-to-the-path-on-mac-os-x-mountain-lion/#.Uydjga1dXDg) to use it on a terminal.


### Installation

1. Check the missing informations with
```sh
$ flutter doctor
```

2. Create credentials.json and put it into `/assets`
The file need the following keys :
`XXXX_API_KEY`, `YYYYY_API_KEY`


### Credentials
Available in Lastpass.


---

## Test and deploy

### Run

```sh
$ flutter run
```

To run on a specific device :
```sh
$ flutter run -d XXXXXXXXX
```

### Build & deploy

First, clean the project
```sh
$ flutter clean
```

#### Android

- Go to `android/app/gradle.build`
- In defaultConfig object, edit `versionCode` and `versionName` values.

```sh
$ flutter build apk --release
```
or
```sh
$ flutter build appbundle
```

To obfuscate the code (encrypt) :
```sh
$ flutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>
```

#### iOS

```sh
$ flutter build ios
```

if build on iOS crash :
```sh
$ cd ios
```
Remove `Podfile` and `Podfile.lock`, then
```sh
$ cd ..
$ flutter build ios
```

- To deploy, go to `ios/` and open `Runner.xcworkspace` 
- Update `Version`and `Build` fields on `Runner > Target Runner`
- Target `Runner > Generic iOS device` on the top left dropdown
- Clic on `Product`, then `Archive` 
- When its over, clic on `Distribute app` on the new archive, then continue.


---

## Frequently asked questions

##### Question 1
 * Answer 1

##### Question 2
 * Answer 2