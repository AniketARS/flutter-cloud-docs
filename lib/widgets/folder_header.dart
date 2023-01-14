import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils.dart';

class FolderHeader extends StatelessWidget {
  const FolderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 20).add(const EdgeInsets.only(bottom: 20, top: 5)),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 10),
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              spreadRadius: 10),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/search_folder.svg',
            width: 65,
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Free Space',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  color: whiteTextColor,
                ),
              ),
              Text(
                "500 GB",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                  color: whiteTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Stack(
                children: [
                  Container(
                    height: 8,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(128, 255, 0, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
