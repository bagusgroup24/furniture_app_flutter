import 'package:flutter/material.dart';

import '../../theme.dart';

class MyReviewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 335,
              height: 240,
              decoration: BoxDecoration(
                color: textWhiteColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 30,
                ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Bagus Sanjaya Pratama',
                              style: primaryTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '20/03/2020',
                            style: greyTextStyle2.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/star2.png',
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/star2.png',
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/star2.png',
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/star2.png',
                            width: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 148),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/a.jpg'),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
