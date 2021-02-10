import 'package:app_turismo/screens/homePage/home_Page.dart';
import 'package:flutter/material.dart';

class CityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,
            elevation: 0,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/maceio4.jpeg',
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('Item $index')),
                childCount: 25),
          ),
        ],
      ),
    );
  }
}
