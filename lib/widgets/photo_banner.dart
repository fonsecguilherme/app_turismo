import 'package:flutter/material.dart';

class PhotoBanner extends StatelessWidget {
  final double _cHeight = 340;
  final String image;

  const PhotoBanner({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: _cHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    );
  }
}
