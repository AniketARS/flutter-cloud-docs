import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: files.length,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 90,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/files/' + files[index].type + '.svg',
                    width: 35,
                  ),
                  SizedBox(height: 8),
                  Text(
                    files[index].name + '.' + files[index].type,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
