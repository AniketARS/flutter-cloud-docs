import 'package:cloud_docs/widgets/featured_list.dart';
import 'package:cloud_docs/widgets/folder_list.dart';
import 'package:cloud_docs/widgets/section_heading.dart';
import 'package:cloud_docs/widgets/title_main.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TitleMain(),
          SizedBox(height: 20),
          FeaturedList(),
          SectionHeading('Top Rated Docs', "More", false),
          FolderList(),
        ],
      ),
    );
  }
}
