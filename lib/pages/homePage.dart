import 'dart:async';
import 'package:flutter/material.dart';
import 'package:starter_flutter/components/buttons/mediumButton.dart';
/* Theme */
import 'package:starter_flutter/themes/colors.dart';

class _HomePageState extends State<HomePage> {
  
   @override
   void initState(){
      super.initState();
   }

   @override
   void dispose() {
      super.dispose();
   }  

   @override
   Widget build(BuildContext context){

      return Scaffold(
         backgroundColor : CustomColors.White,
         body : Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children : <Widget>[
               Center(child: Column(
                  children: [
                     Text('Starter for Flutter project.'),
                     MediumButton(
                        title          : 'Button',
                        backroundColor : Colors.blue[200],
                        fontColor      : CustomColors.White,
                        onPressed      : (){},
                     )
                  ],
               )),
            ],
         ),
      );
   }
}

class HomePage extends StatefulWidget{

   @override
   _HomePageState createState() => _HomePageState();
} 


