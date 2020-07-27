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
        Text(name),
        Text(description),
      ],
    );
  }
}
