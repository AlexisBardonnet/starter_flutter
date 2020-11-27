import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/* Themes */
import './themes/colors.dart';
/* Services */
// Pages
import 'pages/splashscreenPage.dart';
/* Plugins */
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();

   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
      runApp(App());
   });
}


class App extends StatelessWidget {

   @override
   Widget build(BuildContext context){
      return MaterialApp(
            localizationsDelegates : [
               GlobalMaterialLocalizations.delegate,
               GlobalWidgetsLocalizations.delegate,
               GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: [
               const Locale('fr', 'FR')
            ],
            debugShowCheckedModeBanner : false,
            title : 'Starter Flutter',
            // theme : ThemeData(
            //    primaryColor : CustomColors.GreyBlue,
            //    fontFamily   : 'OpenSans'
            // ),
            routes : {
               '/' : (_) =>  SplashScreen()


               // ------  Implementing with Firebase ------ //
               // ------  Load Firebase data before access app ------ //
               
               // FutureBuilder(
               //    future: _initialization,
               //    builder: (context, snapshot) {
                     // // Check for errors
                     // if (snapshot.hasError) {
                     //    print(snapshot.hasError);
                     //    return Loading();
                     // }

               //       // Once complete, show your application
               //       if (snapshot.connectionState == ConnectionState.done) {
               //          return SplashScreen();
               //       }

                     // // Otherwise, show something whilst waiting for initialization to complete
                     // return Loading();
               //    },
               // ),
            },
      );
   }
}