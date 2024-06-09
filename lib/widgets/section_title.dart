import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.title, this.seeAll, super.key});

  final String title;
  final Function()? seeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: seeAll,
            child: Text(
              'View all',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            )),
      ],
    );
  }
}
