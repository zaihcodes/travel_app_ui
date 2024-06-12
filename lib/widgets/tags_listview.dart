import 'package:flutter/material.dart';

class TagsListView extends StatefulWidget {
  const TagsListView({super.key});

  @override
  State<TagsListView> createState() => _TagsListViewState();
}

class _TagsListViewState extends State<TagsListView> {
  List<Map<String, dynamic>> popularTags = [
    {'tag': 'Most Viewed', 'isActive': true},
    {'tag': 'Nearby', 'isActive': false},
    {'tag': 'Latest', 'isActive': false},
  ];
  int selectedTagIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: popularTags.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 25,
            );
          },
          itemBuilder: (context, index) {
            final tag = popularTags[index];
            return buildTagItem(index, tag);
          }),
    );
  }

  GestureDetector buildTagItem(int index, Map<String, dynamic> tag) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTagIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                selectedTagIndex == index ? Colors.black : Colors.grey.shade50,
            boxShadow: selectedTagIndex == index
                ? [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    )
                  ]
                : [],
          ),
          child: Text(
            tag['tag'],
            style: TextStyle(
              fontSize: 16,
              color: selectedTagIndex == index
                  ? Colors.white
                  : Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
