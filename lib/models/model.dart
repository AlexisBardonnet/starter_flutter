class Position {
   double lat;
   double lng;

   Position({
      this.lat,
      this.lng,
   });

   factory Position.fromJson(Map<String, dynamic> json){
      return Position(
         lat : json['lat'],
         lng : json['lng'],
      );
   }
}


class Model{
   int id;
   String text;
   bool isChecked = false;
   Position position;

   Model({ 
      this.id, 
      this.text, 
      this.isChecked,
      this.position
   });

   factory Model.fromJson(Map<dynamic, dynamic> json){
      return Model(
         id        : json['id'],
         text      : json['text'],
         isChecked : json['isChecked'],
         position  : Position.fromJson(json["position"])
      );
   }
}