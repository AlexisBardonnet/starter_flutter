import 'package:flutter/material.dart';
import 'dart:async';
/* Pages */
import 'package:starter_flutter/pages/homePage.dart';
/* Plugins */
import 'package:flutter_svg/flutter_svg.dart';

class _SplashScreenState extends State<SplashScreen>{

   static final String tiz = 'assets/icons/logoTiz.svg';
   final Widget tizIcon = SvgPicture.asset(tiz, semanticsLabel: 'Tiz icon');

   @override
   void initState() {
      super.initState();
      _startTimeout();
   }

   /* Timer */
   _startTimeout() async {
      var duration = const Duration(seconds: 1);
      return new Timer(duration, _switchToMainPage); 
   }

   /* Go to welcome page after timer */
   void _switchToMainPage() async{
      Navigator.of(context).pushReplacement( new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
   }

   @override
   Widget build(BuildContext context){
      // Size size = MediaQuery.of(context).size;

      return Stack(
         children: <Widget>[
            // If you want to put a background image 

            // Center(
            //    child: new Image.asset(
            //       'assets/images/xxxxx.jpg',
            //       width  : size.width,
            //       height : size.height,
            //       fit    : BoxFit.cover,
            //    ),
            // ),

            Scaffold(
               backgroundColor : Colors.black,
               body : Column(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children : <Widget>[
                     Center(child: tizIcon),
                  ],
               ),
            ),
         ],
      );
   }
}

class SplashScreen extends StatefulWidget{
   @override
   _SplashScreenState createState() => _SplashScreenState();
}
