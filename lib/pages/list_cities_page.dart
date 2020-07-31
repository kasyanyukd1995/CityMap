//import 'dart:convert';
import 'package:CityMap/models/city_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:CityMap/widgets/item_city.dart';
import 'package:flutter/material.dart';
import 'city_info_page.dart';

class CityList extends StatelessWidget {
  final List<CityModel> listCity = [
    CityModel(
      id: 1,
      name: 'Minsk',
      description: 'Minsk is the capital of Belarus',
      urlImage:
          'https://www.intex-press.by/wp-content/uploads/2017/01/prospekt_pobediteley.jpg',
    ),
    CityModel(
      id: 2,
      name: 'London',
      description: 'London is the capital of Great Britain',
      urlImage:
          'https://politobzor.net/uploads/posts/2018-05/1525369623_1501995760_c-qt1t7xoaeb_od.jpg',
    ),
    CityModel(
      id: 3,
      name: 'Berlin',
      description: 'Berlin is the capital of Germany',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/2474062/22d70288-0422-4b94-81ca-bd8b0218f838/s1200?webp=false',
    ),
    CityModel(
      id: 4,
      name: 'Malorita',
      description: 'My wife was born in Malorita',
      urlImage: 'http://www.fotobel.by/images/malorita/malorita_13.jpg',
    ),
    CityModel(
      id: 5,
      name: 'Lyakhovtsy',
      description: 'Lyakhovtsy is my native village',
      urlImage: 'http://photos.wikimapia.org/p/00/01/68/78/97_big.jpg',
    ),
    CityModel(
      id: 6,
      name: 'Baku',
      description: 'Baku is the capital of Azerbaijan',
      urlImage:
          'https://avatars.mds.yandex.net/get-zen_doc/1587012/pub_5e023b3f6f5f6f00af4cb9ee_5e023b6be6cb9b00b1dbfe0d/scale_1200',
    ),
    CityModel(
      id: 7,
      name: 'Ottawa',
      description: 'Ottawa is the capital of Canada',
      urlImage: 'https://cadelta.ru/images/articles/news/Trav_7.jpg',
    ),
    CityModel(
      id: 8,
      name: 'Paris',
      description: 'Paris is the capital of France',
      urlImage:
          'https://excursovod.by/wp-content/uploads/2018/04/%D0%A2%D1%83%D1%80-%D0%B2%D0%BE-%D0%A4%D1%80%D0%B0%D0%BD%D1%86%D0%B8%D1%8E-%D0%BF%D0%BE-%D1%81%D1%83%D0%BF%D0%B5%D1%80%D1%86%D0%B5%D0%BD%D0%B5-%D0%92%D1%8B%D0%B5%D0%B7%D0%B4-28.04.18-1024x768.jpg',
    ),
    CityModel(
      id: 9,
      name: 'Tbilisi',
      description: 'Tbilisi is the capital of Georgia',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/1751508/8d8946eb-a8de-4886-a9b2-5a585177c5cf/s1200?webp=false',
    ),
    CityModel(
      id: 10,
      name: 'Jakarta',
      description: 'Jakarta is the capital of Indonesia',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/467038/90ad180e-37b9-449f-8d01-5f3b610cb7e2/s1200?webp=false',
    ),
    CityModel(
      id: 11,
      name: 'Rome',
      description: 'Rome is the capital of Italy',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/2918639/d1ba8efa-fec5-4023-bdd9-0cd50aa04457/s1200?webp=false',
    ),
    CityModel(
      id: 12,
      name: 'Tokyo',
      description: 'Tokyo is the capital of Japan',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/905242/05167db4-3884-4933-99e8-de87f550c11a/s1200?webp=false',
    ),
    CityModel(
      id: 13,
      name: 'Astana',
      description: 'Astana is the capital of Kazakhstan',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/1751208/d8806b58-b810-451e-acec-3f193ea5c643/s1200?webp=false',
    ),
    CityModel(
      id: 14,
      name: 'Riga',
      description: 'Riga is the capital of Latvia',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/776003/fd8c75da-8f20-4b7f-b343-a0ad913d6aee/s1200?webp=false',
    ),
    CityModel(
      id: 15,
      name: 'Rabat',
      description: 'Rabat is the capital of Morocco',
      urlImage: 'https://wikiway.com/upload/hl-photo/a27/b4e/rabat_2.jpg',
    ),
    CityModel(
      id: 16,
      name: 'Oslo',
      description: 'Oslo is the capital of Norway',
      urlImage:
          'https://avatars.mds.yandex.net/get-pdb/197794/de299f55-08a5-4470-9e12-3e64e031c1db/s1200?webp=false',
    ),
  ];

  Widget build(BuildContext context) {
    //String json = jsonEncode(listCity);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cities'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            //childAspectRatio: 1.1,
            //childAspectRatio: MediaQuery.of(context).size.height / 1000
          ),
          itemBuilder: (context, index) {
            final itemModel = listCity[index];
            return ItemCity(
              name: itemModel.name,
              description: itemModel.description,
              urlImage: itemModel.urlImage,
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
            Text('json'),
            Text('dfd'),
          ],
        ),
      ),
    );
  }
}
