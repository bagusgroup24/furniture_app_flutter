import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class FavoriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/lampimg.png',
                width: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Minimal Lamp',
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '\$ 12.00',
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 108,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: Image.asset(
                    'assets/cancel.png',
                    width: 19.5,
                  ),
                ),
                SizedBox(
                  height: 46.5,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: GreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Image.asset(
                      'assets/tas_hitam.png',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Divider(
          thickness: 1,
          color: blurGreyColor,
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
