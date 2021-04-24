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
              padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maceió',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'When passing layout constraints to its child, padding shrinks the constraints by the given padding, causing the child to layout at a smaller size. Padding then sizes itself to its childs size, inflated by the padding, effectively creating empty space around the child.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      //margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/maceio.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Maceió',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'When passing layout constraints to its child, padding shrinks the constraints by the given padding, causing the child to layout at a smaller size. Padding then sizes itself to its childs size, inflated by the padding, effectively creating empty space around the child.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Mais em Maceió: ',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/maceio2.jpeg',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/maceio3.jpeg',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/maceio6.jpeg',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
