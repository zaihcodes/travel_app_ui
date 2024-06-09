import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/custom_appbar.dart';
import 'package:travel_app_ui/widgets/search_widget.dart';
import 'package:travel_app_ui/widgets/section_title.dart';
import 'package:travel_app_ui/widgets/tags_listview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppbar(),
            // Search
            gabV30(),
            SearchWidget(),
            //   popular places
            gabV30(),
            SectionTitle(
              title: 'Popular places',
              seeAll: () {},
            ),
            gabV30(),
            TagsListview(),
            gabV30(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 0.65,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 8,
                              blurRadius: 6,
                              offset: Offset(2, 6),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/images/mount_fuji.png'),
                            fit: BoxFit.cover,
                          )),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: ClipOval(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  padding: EdgeInsets.all(10),
                                  color: Colors.grey,
                                  child: Image.asset(
                                      'assets/icons/heart icon.png'),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 7.0,
                                    sigmaY: 7.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Mount Fuji, ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Tokyo',
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.7),
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 16,
                                                    width: 16,
                                                    child: Image.asset(
                                                      'assets/icons/fi-rr-marker.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Tokyo, Japan',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.7),
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.white
                                                        .withOpacity(0.7),
                                                  ),
                                                  Text(
                                                    '4.8',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.7),
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gabV30(),
          ],
        ),
      ),
    );
  }

  Widget gabV30() {
    return SizedBox(
      height: 30,
    );
  }
}
