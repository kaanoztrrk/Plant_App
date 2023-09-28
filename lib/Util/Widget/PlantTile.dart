import 'package:flutter/material.dart';
import 'package:plat_shop/Model/PlantModel.dart';
import 'package:plat_shop/Util/Extension/Text.dart';

import '../Extension/ItemContainerDecoration.dart';

class PlantTile extends StatelessWidget {
  const PlantTile({super.key, required this.plant, this.onPressed});

  final Plant plant;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(18),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.175,
        color: Colors.grey[200],
        child: Row(
          children: [_image(), _itemInfo(context)],
        ));
  }

  Expanded _itemInfo(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const ItemContainerDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    plant.title,
                    style: k_textTheme(context)
                        .headlineSmall
                        ?.copyWith(fontSize: 24),
                  ),
                  subtitle: Text(
                    plant.category,
                    style: k_textTheme(context)
                        .titleSmall
                        ?.copyWith(color: Colors.grey[600]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${plant.price}",
                      style: k_textTheme(context).titleLarge,
                    ),
                    GestureDetector(
                      onTap: onPressed,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 7.5),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Visit",
                          style: k_textTheme(context).titleSmall,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Expanded _image() {
    return Expanded(
        flex: 3,
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Image.asset(plant.imagePath, fit: BoxFit.cover),
        ));
  }
}
