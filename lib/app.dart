import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'style.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: appBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
      ),
    );
  }
}
