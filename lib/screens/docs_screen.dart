import 'package:cloud_docs/widgets/folder_header.dart';
import 'package:cloud_docs/widgets/my_folder.dart';
import 'package:cloud_docs/widgets/recent_files.dart';
import 'package:cloud_docs/widgets/search_bar.dart';
import 'package:cloud_docs/widgets/section_heading.dart';
import 'package:cloud_docs/widgets/title_main.dart';
import 'package:flutter/material.dart';

class DocsScreen extends StatefulWidget {
  const DocsScreen({super.key});

  @override
  DocsScreenState createState() => DocsScreenState();
}

class DocsScreenState extends State<DocsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            TitleDocs(),
            SearchBar(),
            FolderHeader(),
            SectionHeading("Recent Files", "View All", false),
            RecentFiles(),
            SizedBox(height: 15),
            SectionHeading('My Folder', '', true),
            MyFolder(),
          ],
        ),
      ),
    );
  }
}
