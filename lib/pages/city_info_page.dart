import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CityInfoPage extends StatelessWidget {
  final CityModel cityModel;
  const CityInfoPage({
    this.cityModel,
  });
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            cityModel.name,
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  cityModel.name.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  cityModel.description,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey,
                  ),
                ),
                Image.network(cityModel.urlImage),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        drawer: Column(
          children: <Widget>[
            Text('safsf'),
            Text('dfd'),
          ],
        ),
      ),
    );
  }
}
