import 'dart:ui';

import 'package:app_turismo/models/city.dart';
import 'package:app_turismo/screens/city_detail.dart';
import 'package:flutter/material.dart';
//import '../style.dart';

class HomePage extends StatelessWidget {
  final double _cHeight = 340;
  final String _appName = 'turismo.co';
  final locations = City.fetchAll();

  @override
  Widget build(BuildContext context) {
    final location = locations.first;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          _appName,
          style: TextStyle(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'maceió minha sereia',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Stack(
              //widget retangulo foto
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CityDetail())); //dá pra passar referencia da cidade por aqui
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: _cHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(location.photos[3]),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 5.0, sigmaY: 5.0),
                                  child: Container(
                                    // efeito de vidro
                                    height: 91.0,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.grey.shade200.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(location.facts[3].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2),
                                  Text(
                                    location.facts[3].fact,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
