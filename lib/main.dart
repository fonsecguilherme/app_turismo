import 'package:app_turismo/style.dart';
import 'package:flutter/material.dart';
import './screens/homePage/home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP Turismo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          //titleTextStyle: TextStyle(fontStyle: AppBarTextStyle),
          textTheme: TextTheme(headline1: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          headline1: TitleTextStyle,
          bodyText1: Body1TextStyle,
          headline2: TileTextStyle,
          bodyText2: TileBodyTextStyle,
          headline3: AppBarTextStyle2,
        ),
      ),
      home: HomePage(),
    );
  }
}
