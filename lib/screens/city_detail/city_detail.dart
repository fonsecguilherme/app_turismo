import 'package:app_turismo/screens/homePage/home_Page.dart';
import 'package:flutter/material.dart';
import 'package:app_turismo/style.dart';

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
            expandedHeight: 350,
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
          SliverFixedExtentList(
            itemExtent: 200,
            delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Maceió',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Expanded(
                        child: Text(
                          'When passing layout constraints to its child, padding shrinks the constraints by the given padding, causing the child to layout at a smaller size. Padding then sizes itself to its childs size, inflated by the padding, effectively creating empty space around the child.',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
