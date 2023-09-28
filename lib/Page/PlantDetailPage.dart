import 'package:flutter/material.dart';
import 'package:plat_shop/Model/PlantModel.dart';
import 'package:plat_shop/Util/Extension/Text.dart';

class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage({super.key, required this.plant});

  final Plant plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161616),
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                _image(context),
                _detail(context),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "About",
                      style: k_textTheme(context).headlineSmall,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      plant.about.toString(),
                      style: const TextStyle(fontSize: 18, wordSpacing: 5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        RowPlantDetail(
                          plant: plant,
                          icon: Icons.height,
                          title: "Heigth",
                          detail: plant.heigth.toString(),
                        ),
                        RowPlantDetail(
                          plant: plant,
                          icon: Icons.swap_horiz_outlined,
                          title: "Diameter",
                          detail: plant.diameter.toString(),
                        ),
                        RowPlantDetail(
                          plant: plant,
                          icon: Icons.water_drop_outlined,
                          title: "Humidifier",
                          detail: plant.humidifier.toString(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "\$ ${plant.price}",
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Color(0xff161616),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 50),
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.green[300]),
                              onPressed: () {},
                              child: const Text("CheckOut"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SafeArea _detail(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(plant.title,
                    style: k_textTheme(context).headlineSmall?.copyWith(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),

            // divider
            Divider(
                thickness: 4,
                color: Colors.white,
                endIndent: MediaQuery.of(context).size.width * 0.8),
            const SizedBox(height: 20),
            // Plant Detail
            PlantDetailListTile(title: "Catagory", detail: plant.category),
            PlantDetailListTile(title: "Type", detail: plant.type),
            PlantDetailListTile(title: "Plants", detail: plant.plants)
          ],
        ),
      ),
    );
  }

  Row _image(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          plant.imagePath,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class PlantDetailListTile extends StatelessWidget {
  const PlantDetailListTile({
    super.key,
    required this.title,
    required this.detail,
  });

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
              fontWeight: FontWeight.w500),
        ),
      ),
      subtitle: Text(
        detail,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class RowPlantDetail extends StatelessWidget {
  const RowPlantDetail(
      {super.key,
      required this.plant,
      required this.title,
      required this.detail,
      required this.icon});

  final Plant plant;
  final String title;
  final String detail;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            child: Icon(icon, color: Colors.white),
            backgroundColor: const Color(0xff161616),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500),
              ),
              Text(
                detail,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff161616),
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
