# MyBootlid
### boo19082751_application_mobile

////////////////

- Starter for Flutter projects 
- Contain a splashscreen and a main page
- Implementing routing 

////////////////


- Android : [Play store url]
- iOS : [App Store url]

- Developer : Alexis BARDONNET
- Designer : 
- Project manager : 
- Marketing : 
- Commercial : 


## I - Technology
Flutter 1.22.2

## II - Back office

- [Name of git repository] 
- Git repository : [Link of git repository]


## III - Dependencies

|     Dependency     | Version  |
| ------------------ | -------- |
| http               | 0.12.0+2 |
| shared_preferences | 0.5.7+1  |


## IV - Install
```sh
$ npm install
```

- Install flutter command on your PATH to use it on a terminal
https://www.architectryan.com/2012/10/02/add-to-the-path-on-mac-os-x-mountain-lion/#.Uydjga1dXDg


- Check the missing informations with
```sh
$ flutter doctor
```

- Create credentials.json and put it into /assets

the file need the following keys :
`XXXX_API_KEY`, `YYYYY_API_KEY`


## V - Credentials
Available in Lastpass, and in the Google Drive


## VI - Run
```sh
$ flutter run
```

To run on a specific device :
```sh
$ flutter run -d XXXXXXXXX
```


## VII - Build & deploy
First, clean the project
```sh
$ flutter clean
```

### Android
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

### iOS

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
- When its over, clic on `Distribute app` on the new archive, then continue
