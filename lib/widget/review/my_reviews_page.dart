import 'package:flutter/material.dart';
import 'package:furniture/widget/review/my_reviews.list.dart';

import '../../theme.dart';

class MyReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: textWhiteColor,
          automaticallyImplyLeading: false,
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, '/profile');
                  },
                  child: Image.asset(
                    'assets/back.png',
                    width: 10,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'RATING & REVIEW',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/2.png',
                width: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Minimal Stand',
                    style: greyTextStyle2,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star2.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4.5',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    '10 reviews',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget divider() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          thickness: 2,
          color: GreyColor,
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            MyReviewsList(),
            MyReviewsList(),
            MyReviewsList(),
          ],
        ),
      );
    }

    Widget footer() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Write a review',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: navbar(),
      body: Stack(
        children: [
          ListView(
            children: [
              header(),
              divider(),
              content(),
            ],
          ),
          footer(),
        ],
      ),
    );
  }
}
