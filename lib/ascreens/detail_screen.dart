import 'package:flutter/material.dart';

import '../utils/glass_morphism.dart';
import '../widgets/detail_place_card.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.placeName,
      required this.location,
      required this.imagePath,
      required this.price,
      super.key});
  final String imagePath;
  final String placeName;
  final String location;
  final double price;

  final List<Map<String, dynamic>> overviewInfo = [
    {
      "text": "8 hours",
      "icon": "assets/icons/icon clock.png",
    },
    {
      "text": "16 °C",
      "icon": "assets/icons/icon cloud.png",
    },
    {
      "text": "4.5",
      "icon": "assets/icons/icon cloud.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
        child: Column(
          children: [
            DetailPlaceCard(
              imagePath: imagePath,
              placeName: placeName,
              location: location,
              price: price,
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Text(
                  'Overview',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Text(
                  'Details',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(overviewInfo.length, (index) {
                final info = overviewInfo[index];
                return buildIconText(
                  text: info['text'],
                  iconPath: info['icon'],
                );
              }),
            ),
            const SizedBox(height: 40),
            Expanded(
                child: Stack(
              children: [
                SingleChildScrollView(
                    child: Column(
                  children: [
                    Text(
                      'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to '
                      'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to',
                      style: TextStyle(height: 1.7, fontSize: 18),
                    ),
                    SizedBox(height: 60),
                  ],
                )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.1)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            buildCustomSendButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  GestureDetector buildCustomSendButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Overview',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/icons/send_icon.png",
              width: 18,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Row buildIconText({required String text, required String iconPath}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            iconPath,
            width: 14,
            color: Colors.black,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
