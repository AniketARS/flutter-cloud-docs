import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleMain extends StatelessWidget {
  const TitleMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hello again', style: headingStyle),
              SvgPicture.asset(
                'assets/icons/menu.svg',
                width: 32,
                color: textColor,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('ErrorSense', style: headingStyle),
            ],
          ),
        )
      ],
    );
  }
}

class TitleDocs extends StatelessWidget {
  const TitleDocs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              controller.jumpToPage(0);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: textColor,
            ),
          ),
          const SizedBox(width: 20),
          Text('Document', style: headingStyle),
        ],
      ),
    );
  }
}
