import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/no_favorite.svg',
            width: 80,
            color: textColor.withOpacity(0.1),
          ),
          Text(
            'No Favorite',
            style: TextStyle(
              fontSize: 24,
              color: textColor.withOpacity(0.2),
              fontWeight: FontWeight.w400,
              fontFamily: 'Quicksand',
            ),
          )
        ],
      ),
    );
  }
}
