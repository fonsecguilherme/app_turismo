class Location {

  final String name;
  final String imagePath;

  Location({this.name, this.imagePath});

  static List<Location> fetchAll(){
    return[
      Location(
        name: "Maceió",
        imagePath: "assets/images/maceio.jpg"
      ),
    ];
  }


}
