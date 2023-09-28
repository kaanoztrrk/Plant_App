import 'package:flutter/material.dart';
import 'package:plat_shop/Constant/Const.dart';
import 'package:plat_shop/Util/Extension/Text.dart';
import 'package:plat_shop/Util/Widget/PlantTile.dart';

import '../Model/PlantModel.dart';
import 'PlantDetailPage.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plant> _shop = [
      Plant(
          title: "Mor Salkım",
          category: "Indoor",
          type: "small",
          plants: "plants",
          price: "40.0",
          imagePath: "asset/ic_plant_1.png",
          heigth: "5.5",
          diameter: "8.4",
          humidifier: "5.2",
          about:
              "Occaecat aliqua consectetur anim et et ullamco. Occaecat aliqua consectetur anim et et ullamco.Occaecat aliqua consectetur anim et et ullamco."),
      Plant(
          title: "Kış Defnesi",
          category: "Outdoor",
          type: "midium",
          plants: "plants",
          price: "26.0",
          imagePath: "asset/ic_plant_2.png",
          heigth: "5.5",
          diameter: "1.8",
          humidifier: "0.2",
          about:
              "Occaecat aliqua consectetur anim et et ullamco. Occaecat aliqua consectetur anim et et ullamco.Occaecat aliqua consectetur anim et et ullamco."),
      Plant(
          title: "Malta Eriği",
          category: "Outdoor",
          type: "midium",
          plants: "plants",
          price: "32.0",
          imagePath: "asset/ic_plant_3.png",
          heigth: "5.5",
          diameter: "3.4",
          humidifier: "1.2",
          about:
              "Occaecat aliqua consectetur anim et et ullamco. Occaecat aliqua consectetur anim et et ullamco.Occaecat aliqua consectetur anim et et ullamco."),
      Plant(
          title: "Yumak Otu",
          category: "Indoor",
          type: "midium",
          plants: "plants",
          price: "92.0",
          imagePath: "asset/ic_plant_4.png",
          heigth: "5.5",
          diameter: "9.4",
          humidifier: "4.2",
          about:
              "Occaecat aliqua consectetur anim et et ullamco. Occaecat aliqua consectetur anim et et ullamco.Occaecat aliqua consectetur anim et et ullamco."),
    ];

    void visitDetail(Plant plant) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlantDetailPage(
          plant: plant,
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
          title:
              Text(storePageName, style: k_textTheme(context).headlineSmall)),
      body: ListView.builder(
        itemCount: _shop.length,
        itemBuilder: (context, index) {
          Plant plant = _shop[index];
          return PlantTile(
            plant: plant,
            onPressed: () => visitDetail(plant),
          );
        },
      ),
    );
  }
}
