import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 10),
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/search.svg',
              color: textColor.withOpacity(0.5),
              width: 24,
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Something',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: textColor.withOpacity(0.3),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
