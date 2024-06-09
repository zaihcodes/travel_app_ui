import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, ZaIhCodes',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                'Explore the world',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
          child: Icon(Icons.person),
        )
      ],
    );
  }
}
