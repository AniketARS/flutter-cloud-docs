import 'package:flutter/material.dart';

Color textColor = const Color.fromRGBO(88, 88, 88, 1);
Color backgroundColor = const Color.fromRGBO(248, 242, 253, 1);
Color whiteTextColor = const Color.fromRGBO(242, 242, 242, 1);

TextStyle headingStyle = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: textColor,
);

class FeaturedFolder {
  final String name;
  final double freeSpace;
  final double totalSpace;
  final Color backColor;

  FeaturedFolder(this.name, this.freeSpace, this.totalSpace, this.backColor);
}

List<FeaturedFolder> features = [
  FeaturedFolder('Work and Private Document', 120.0, 500.0, const Color.fromRGBO(100, 46, 254, 1)),
  FeaturedFolder('Client Specific Document', 5.0, 50.5, const Color.fromRGBO(255, 128, 0, 1)),
  FeaturedFolder('Upcoming Project Document', 45.0, 100.0, Colors.red)
];

class Folder {
  final String name;
  final int count;
  final Icon iconName;

  Folder(this.name, this.count, this.iconName);
}

List<Folder> folders = [
  Folder('UI / UX Projects', 255, Icon(Icons.create, size: 24, color: whiteTextColor)),
  Folder('Project Report', 30, Icon(Icons.assessment, size: 24, color: whiteTextColor)),
  Folder('Project Summary', 30, Icon(Icons.description, size: 24, color: whiteTextColor)),
];

PageController controller = PageController(initialPage: 0, keepPage: true);

class FileProto {
  final String name;
  final String type;

  FileProto(this.name, this.type);
}

List<FileProto> files = [
  FileProto('Brief', 'docx'),
  FileProto('Present', 'ppt'),
  FileProto('Report', 'xlsx'),
  FileProto('Brief', 'pdf'),
  FileProto('Cover', 'jpeg'),
];
