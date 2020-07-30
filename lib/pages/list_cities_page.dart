import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:CityMap/widgets/item_city.dart';
import 'package:flutter/material.dart';
import 'city_info_page.dart';

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
      description: "London is the capital of Great Britain",
    ),
    CityModel(
      id: 3,
      name: "Berlin",
      description: "Berlin is the capital of Germany",
    ),
    CityModel(
      id: 4,
      name: "Malorita",
      description: "My wife was born in Malorita",
    ),
    CityModel(
      id: 5,
      name: "Lyakhovtsy",
      description: "Lyakhovtsy is my native village",
    ),
    CityModel(
      id: 6,
      name: "Baku",
      description: "Baku is the capital of Azerbaijan",
    ),
    CityModel(
      id: 7,
      name: "Ottawa",
      description: "Ottawa is the capital of Canada",
    ),
    CityModel(
      id: 8,
      name: "Paris",
      description: "Paris is the capital of France",
    ),
    CityModel(
      id: 9,
      name: "Tbilisi",
      description: "Tbilisi is the capital of Georgia",
    ),
    CityModel(
      id: 10,
      name: "Jakarta",
      description: "Jakarta is the capital of Indonesia",
    ),
    CityModel(
      id: 11,
      name: "Rome",
      description: "Rome is the capital of Italy",
    ),
    CityModel(
      id: 12,
      name: "Tokyo",
      description: "Tokyo is the capital of Japan",
    ),
    CityModel(
      id: 13,
      name: "Astana",
      description: "Astana is the capital of Kazakhstan",
    ),
    CityModel(
      id: 14,
      name: "Riga",
      description: "Riga is the capital of Latvia",
    ),
    CityModel(
      id: 15,
      name: "Rabat",
      description: "Rabat is the capital of Morocco",
    ),
    CityModel(
      id: 16,
      name: "Oslo",
      description: "Oslo is the capital of Norway",
    ),
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cities"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final itemModel = listCity[index];
            return ItemCity(
              name: itemModel.name,
              description: itemModel.description,
              onTapCityFunction: (cityobj) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CityInfoPage(
                            cityModel: itemModel,
                          ))),
            );
          },
          itemCount: listCity.length,
        ),
        backgroundColor: Colors.white,
        drawer: Column(
          children: <Widget>[
            Text("safsf"),
            Text("dfd"),
          ],
        ),
      ),
    );
  }
}
