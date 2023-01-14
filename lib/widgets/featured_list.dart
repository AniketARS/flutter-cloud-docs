import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: ListView.builder(
          itemCount: 3,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var freeUP = 1 - features[index].freeSpace / features[index].totalSpace;
            return Container(
              width: 280,
              margin: index == 0
                  ? const EdgeInsets.only(right: 20, bottom: 40)
                  : const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              padding: const EdgeInsets.all(30),
              decoration:
                  BoxDecoration(color: features[index].backColor, borderRadius: BorderRadius.circular(30), boxShadow: [
                BoxShadow(
                  blurRadius: 25,
                  color: features[index].backColor.withOpacity(0.5),
                  offset: const Offset(0, 10),
                  spreadRadius: 3,
                )
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      features[index].name,
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w900,
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            "${features[index].totalSpace.toStringAsFixed(0)} GB",
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
                                width: 120 * freeUP,
                                decoration: BoxDecoration(
                                  color: freeUP > 0.85
                                      ? const Color.fromRGBO(255, 0, 0, 1)
                                      : const Color.fromRGBO(128, 255, 0, 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black26,
                        ),
                        child: Icon(
                          Icons.add,
                          color: whiteTextColor.withOpacity(0.5),
                          size: 24,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
