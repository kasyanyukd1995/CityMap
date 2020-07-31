import 'package:flutter/cupertino.dart';

class CityModel {
  final int id;
  final String name;
  final String description;
  final String urlImage;

  CityModel({
    this.id,
    this.name,
    this.description,
    this.urlImage,
  });
  /*CityModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        urlImage = json['urlImage'];
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        urlImage: 'urlImage',
      };*/
}
