// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PhotoSlide extends StatelessWidget {
  String _images;
  PhotoSlide(this._images);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset(
          _images,
          height: 120,
          width: 120,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
