import 'package:cloud_docs/screens/docs_screen.dart';
import 'package:cloud_docs/screens/favorite_screen.dart';
import 'package:cloud_docs/screens/main_screen.dart';
import 'package:cloud_docs/utils.dart';
import 'package:cloud_docs/widgets/my_bottom_sheet.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromRGBO(100, 45, 254, 1)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            _index = value;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          MainScreen(),
          FavoriteScreen(),
          DocsScreen(),
        ],
      ),
      backgroundColor: backgroundColor,
      bottomSheet: MyBottomSheet(_index),
    );
  }
}
