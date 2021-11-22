import 'city_fact.dart';

class City {
  String name;
  String imagePath;
  List<CityFact> facts;

  City({this.name, this.facts, this.imagePath});

  static List<City> fetchAll() {
    return [
      City(name: 'Maceió', imagePath: 'assets/images/maceio5.jpg', facts: [
        CityFact(
            title: 'Onde ir',
            fact:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita'),
        CityFact(
            title: 'O que fazer em Maceió?',
            fact:
                'Embora você esteja organizando uma viagem a Maceió, saiba que as principais atrações e praias que farão parte do seu roteiro se encontram em municípios vizinhos da capital de Alagoas. Para quem não estiver de carro, a solução para conhecer estes lugares é contratar os passeios com alguma agência local.'),
        CityFact(
            title: 'Grota do Cigano',
            fact:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et'),
      ]),
    ];
  }
}
