import 'package:app_buscar_trabajo/models/trabajo.dart';
import 'package:flutter/material.dart';

class CompactItemTrabajo extends StatelessWidget {
  Trabajo trabajo;

  CompactItemTrabajo(this.trabajo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                _companyLogo(),
                _infoJobTexts(context),
              ],
            ),
            _favIcon(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2.0, 2.0),
          blurRadius: 8.0,
        ),
      ],
    );
  }

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.network(this.trabajo.compania.urlLogo),
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.trabajo.compania.nombre,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          this.trabajo.role,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 3.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 14.0,
            ),
            SizedBox(width: 3.0),
            Text(
              this.trabajo.location,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFFB7B7D2),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _favIcon(context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, right: 20.0),
      child: Icon(
        Icons.favorite_border,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
