import 'package:cloud_docs/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomSheet extends StatefulWidget {
  final int _index;

  MyBottomSheet(this._index);
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState(_index);
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int _index;

  _MyBottomSheetState(this._index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 70),
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
                    color: _index == 0
                        ? Theme.of(context).primaryColor
                        : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 0
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(height: 0),
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
                    color: _index == 1
                        ? Theme.of(context).primaryColor
                        : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 1
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(height: 0),
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
                    color: _index == 2
                        ? Theme.of(context).primaryColor
                        : textColor.withOpacity(0.6),
                  ),
                ),
                _index == 2
                    ? Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(height: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
