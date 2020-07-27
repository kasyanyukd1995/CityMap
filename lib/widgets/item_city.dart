import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCity extends StatelessWidget {
  final int id;
  final String name;
  final String description;

  const ItemCity({
    this.id,
    this.name,
    this.description,
  });

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          name,
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          description,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
