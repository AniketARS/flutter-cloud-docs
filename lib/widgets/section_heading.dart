import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String title;
  final String option;
  final bool isIcon;

  SectionHeading(this.title, this.option, this.isIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w800,
                  color: textColor,
                ),
              ),
              isIcon
                  ? Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: textColor,
                    )
                  : Text(
                      option,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w900,
                        color: textColor,
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
