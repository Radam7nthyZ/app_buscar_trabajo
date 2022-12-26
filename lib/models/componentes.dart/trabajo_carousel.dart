import 'package:flutter/material.dart';

class TrabajoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(options: CarouselOptions(), items: <Widget>[
      Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    ]);
  }
}
