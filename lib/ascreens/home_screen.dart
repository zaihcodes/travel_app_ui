import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app_ui/utils/glass_morphism.dart';
import 'package:travel_app_ui/widgets/custom_appbar.dart';
import 'package:travel_app_ui/widgets/search_widget.dart';
import 'package:travel_app_ui/widgets/section_title.dart';
import 'package:travel_app_ui/widgets/tags_listview.dart';

import '../widgets/places_listview.dart';

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
            const SizedBox(height: 20),
            const CustomAppbar(),
            const SizedBox(height: 30),
            const SearchWidget(),
            const SizedBox(height: 30),
            SectionTitle(
              title: 'Popular places',
              seeAll: () {},
            ),
            const SizedBox(height: 30),
            const TagsListView(),
            const SizedBox(height: 30),
            Expanded(
              child: PlacesListView(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
