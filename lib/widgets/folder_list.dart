import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FolderList extends StatelessWidget {
  const FolderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: folders.length,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: 350,
              margin: index == 0
                  ? const EdgeInsets.only(bottom: 20, right: 20, top: 10)
                  : const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        const SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              folders[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '${folders[index].count} files',
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 24,
                      color: textColor.withOpacity(0.5),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
