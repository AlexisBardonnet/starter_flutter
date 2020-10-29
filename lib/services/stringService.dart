
import 'dart:convert';
import 'dart:math';

class StringService{

   /* Uppercase the first char of a string */
   static String uppercaseFirstChar(String str) {
      return "${str[0].toUpperCase()}${str.substring(1)}";
   }


   /* Format a phone number */
   static String formatPhoneNumber(String phoneController){
      if(phoneController[0] == '0'){
         return '+33'+phoneController.substring(1,phoneController.length);
      } 
      else return '+33'+phoneController;
   }


   /* Format a distance in meters or kilometers */
   static String formatDistance(int distance){
      String distanceString = distance.toString();

      if(distance < 1000) return distanceString+'m';
      else if(distance < 10000){
         return distanceString[0]+'km';
      }else if(distance < 100000){
         return distanceString[0]+distanceString[1]+'km';
      }else if(distance < 1000000){
         return distanceString[0]+distanceString[1]+distanceString[2]+'km';
      }else return distanceString;
   }


   /* Format a datetime to dd/mm/yyyy */
   static String formatDate(DateTime date){
      int day = date.day;
      int month = date.month;

      String dayStr   = date.day.toString();
      String monthStr = date.month.toString();
      String yearStr  = date.year.toString();

      if(day < 10) dayStr = "0"+dayStr;
      if(month < 10) monthStr = "0"+monthStr;

      String dateFormatted = dayStr+"/"+monthStr+"/"+yearStr;

      return dateFormatted;
   }
   

   /* Generate a random string */
   static String randomString(int length) {
      var random = Random.secure();
      var values = List<int>.generate(length, (i) =>  random.nextInt(255));
      return base64UrlEncode(values);
   }
}