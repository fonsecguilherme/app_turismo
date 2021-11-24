import 'package:app_turismo/models/city.dart';
import 'package:app_turismo/screens/home_Page.dart';
import 'package:app_turismo/screens/text_section.dart';
import 'package:flutter/material.dart';
import 'package:app_turismo/screens/photo_slide.dart';

class CityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = City.fetchAll();
    final location = locations.first;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 350,
            floating: false,
            pinned: true,
            snap: false,
            elevation: 0,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/maceio5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'turismo.co',
              style: Theme.of(context).textTheme.headline3,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                //color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: []
                    ..addAll(
                      textSections(location),
                    )
                    ..addAll(
                      photosSlide(location),
                    ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> textSections(City city) {
    return city.facts
        .map((fact) => TextSection(fact.title, fact.fact))
        .toList();
  }

  List<Widget> photosSlide(City city) {
    return city.photos.map((photo) => PhotoSlide(photo)).toList();
  }
}
