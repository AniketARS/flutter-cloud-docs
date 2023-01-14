import 'package:cloud_docs/widgets/featured_list.dart';
import 'package:cloud_docs/widgets/folder_list.dart';
import 'package:cloud_docs/widgets/section_heading.dart';
import 'package:cloud_docs/widgets/title_main.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
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
