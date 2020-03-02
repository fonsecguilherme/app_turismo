import 'package:app_turismo/style.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pomba"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(-0.55, 1.0),
            child: Text("Olá, Maceió!", style: TitleTextStyle),
          ),
          Center(
            child: Container(
              color: Colors.transparent,
              width: 302.0,
              height: 340.0,
              child: new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/maceio.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
