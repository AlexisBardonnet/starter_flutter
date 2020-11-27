import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MediumButton extends StatelessWidget {
   MediumButton({@required this.title, this.icon, @required this.onPressed, @required this.backroundColor, @required this.fontColor, this.side});

   final String title;
   final Icon icon;
   final GestureTapCallback onPressed;
   final Color backroundColor;
   final Color fontColor;
   final bool side;

   _displaySide(side){
      if(side != null){
         return BorderSide(color: fontColor, width: 0.5);
      }else return BorderSide(color:Colors.transparent);
   }

   @override
   Widget build(BuildContext context) {
      return Container(
         margin : EdgeInsets.all(8.0),
         width  : 95,
         child  : ButtonTheme(
            height : 47.0,
            child  : FlatButton(
               onPressed : onPressed,
               color     : backroundColor,
               padding   : EdgeInsets.all(10.0),
               shape : RoundedRectangleBorder(
                  borderRadius : BorderRadius.circular(14),
                  side : _displaySide(side)
               ),
               child : Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children : <Widget>[
                     if(icon != null) Container(
                        margin : EdgeInsets.only(right: 10),
                        child  : icon
                     ),
                     Flexible(
                        child: Text(
                           title,
                           textAlign : TextAlign.center,
                           style : TextStyle(
                              color         : fontColor,
                              letterSpacing : 1,
                              fontWeight    : FontWeight.w400,
                           ),
                        ),
                     ),
                  ],
               ),
            ),
         )
      );
   }
}