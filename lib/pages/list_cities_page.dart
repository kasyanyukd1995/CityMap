import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:CityMap/widgets/item_city.dart';

class CityList extends StatelessWidget {
  final List<CityModel> listCity = [
    CityModel(
      id: 1,
      name: "Paris",
      description: "City of Love",
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
