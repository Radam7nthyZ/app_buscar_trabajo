import 'dart:js';
import 'package:app_buscar_trabajo/models/componentes.dart/trabajo_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textsHeader(context),
            _forYou(context),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textsHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi Jade',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Find your next',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'design job',
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }

  Widget _forYou(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'For You',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        TrabajoCarousel(),
      ],
    );
  }
}
