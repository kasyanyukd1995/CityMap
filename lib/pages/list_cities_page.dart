import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:CityMap/widgets/item_city.dart';

class CityList extends StatelessWidget {
  final List<CityModel> listCity = [
    CityModel(
      id: 1,
      name: "Minsk",
      description: "Minsk is the capital of Belarus",
    ),
    CityModel(
      id: 2,
      name: "London",
      description: "City of Jopa",
    ),
    CityModel(
      id: 3,
      name: "New York",
      description: "City of 12a",
    ),
    CityModel(
      id: 4,
      name: "Brest",
      description: "City of Love",
    ),
    CityModel(
      id: 5,
      name: "Vitebsk",
      description: "slav bazar",
    ),
  ];

  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final itemModel = listCity[index];
        return ItemCity(
          name: itemModel.name,
          description: itemModel.description,
        );
      },
      itemCount: listCity.length,
    );
  }
}
