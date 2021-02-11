import 'package:flutter/material.dart';

class SpaceAppBar extends StatelessWidget {
  const SpaceAppBar({
    @required this.title,
    this.leading,
    this.trailing,
  });
  final String title;
  final Widget leading;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23),
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leading ??
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Google-sans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                trailing ??
                    Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
              ],
            ),
          ],
        ));
  }
}
