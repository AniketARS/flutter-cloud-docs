import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFolder extends StatelessWidget {
  const MyFolder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: folders.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 5),
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              margin: const EdgeInsets.symmetric(horizontal: 20).add(
                const EdgeInsets.only(top: 10, bottom: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(0, 30),
                    color: Theme.of(context).primaryColor.withOpacity(0.05),
                    spreadRadius: 20,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/folder.svg',
                        width: 60,
                      ),
                      folders[index].iconName,
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    folders[index].name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '${folders[index].count} files',
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
