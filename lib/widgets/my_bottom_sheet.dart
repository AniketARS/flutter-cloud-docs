import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomSheet extends StatefulWidget {
  final int _index;

  const MyBottomSheet(this._index, {super.key});
  @override
  MyBottomSheetState createState() => MyBottomSheetState(_index);
}

class MyBottomSheetState extends State<MyBottomSheet> {
  int _index;

  MyBottomSheetState(this._index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 0;
                      controller.jumpToPage(_index);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/icons/home.svg',
                    width: 24,
                    color: _index == 0 ? Theme.of(context).primaryColor : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 0
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : const SizedBox(height: 0),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 1;
                      controller.jumpToPage(_index);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/icons/favorite.svg',
                    width: 24,
                    color: _index == 1 ? Theme.of(context).primaryColor : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 1
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : const SizedBox(height: 0),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 2;
                      controller.jumpToPage(_index);
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/icons/docs.svg',
                    width: 24,
                    color: _index == 2 ? Theme.of(context).primaryColor : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 2
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : const SizedBox(height: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
