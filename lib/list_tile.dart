import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData firstIcon;
  final IconData lastIcon;
  final Color shade;

  Tile(
      {Key? key,
        required this.title,
        required this.subtitle,
        required this.firstIcon,
        required this.lastIcon, required this.shade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: shade,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                firstIcon,
                color: Colors.white,
              ),
            ), SizedBox(
              width: 20,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  title,
                  style:
                  TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  subtitle,
                  style:
                  TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: 130,
            ),
            Icon(
              lastIcon,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
