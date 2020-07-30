import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCity extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final Function(CityModel cityobj) onTapCityFunction;
  final CityModel cityobj;

  const ItemCity({
    this.id,
    this.name,
    this.description,
    this.onTapCityFunction,
    this.cityobj,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 12, 3, 3),
      child: Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          onTap: () => onTapCityFunction(cityobj),
        ),
      ),
    );
  }
}
