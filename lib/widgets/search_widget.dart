import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Places',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                contentPadding: EdgeInsets.only(bottom: 10),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 2,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/icons/icon setting.png'),
          )
        ],
      ),
    );
  }
}
