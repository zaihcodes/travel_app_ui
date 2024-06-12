import 'package:flutter/material.dart';
import 'package:travel_app_ui/ascreens/detail_screen.dart';
import 'package:travel_app_ui/widgets/place_card.dart';

class PlacesListView extends StatelessWidget {
  const PlacesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PlaceCard(
          imagePath: 'assets/images/mount_fuji.png',
          placeName: 'Mount Fuji',
          location: 'Tokyo, Japan',
          rating: 4.8,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        imagePath: 'assets/images/mount_fuji.png',
                        placeName: 'Mount Fuji',
                        location: 'Tokyo, Japan',
                        price: 300,
                      )),
            );
          },
        ),
        SizedBox(
          width: 20,
        ),
        PlaceCard(
          imagePath: 'assets/images/andes_mountain.png',
          placeName: 'Andes mountain',
          location: 'South, America',
          rating: 4.8,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        imagePath: 'assets/images/andes_mountain.png',
                        placeName: 'Andes mountain',
                        location: 'South, America',
                        price: 230,
                      )),
            );
          },
        ),
        // Add more PlaceCard widgets as needed
      ],
    );
  }
}
