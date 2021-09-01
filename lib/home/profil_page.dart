import 'package:flutter/material.dart';

import '../theme.dart';

class ProfilPage extends StatelessWidget {
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
                Image.asset(
                  'assets/search.png',
                  width: 24,
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'PROFILE',
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
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/a.jpg'),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bagus Sanjaya Pratama',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'bagus.bip24@gmail.com',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
                right: 30,
              ),
              child: Image.asset(
                'assets/edit.png',
                width: 24,
              ),
            ),
          ],
        ),
      );
    }

    Widget myOrders() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'My orders',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Already have 10 orders',
                        style: greyTextStyle2.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 161,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/my-order');
                    },
                    child: Image.asset(
                      'assets/next_grey.png',
                      width: 8,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget shippingAddress() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Shipping Addresses',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        '03 Addresses',
                        style: greyTextStyle2.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/shipping-page');
                    },
                    child: Image.asset(
                      'assets/next_grey.png',
                      width: 8,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget paymentMethod() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Payment Method',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'You have 2 cards',
                        style: greyTextStyle2.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 144,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/payment');
                    },
                    child: Image.asset(
                      'assets/next_grey.png',
                      width: 8,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget myReviews() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'My reviews',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Reviews for 5 items',
                        style: greyTextStyle2.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 181,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/my-reviews');
                    },
                    child: Image.asset(
                      'assets/next_grey.png',
                      width: 8,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget helpCenter() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Help Center',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'FAQ, Contact',
                        style: greyTextStyle2.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 188,
                  ),
                  Image.asset(
                    'assets/next_grey.png',
                    width: 8,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: navbar(),
      body: Column(
        children: [
          header(),
          myOrders(),
          shippingAddress(),
          paymentMethod(),
          myReviews(),
          helpCenter(),
        ],
      ),
    );
  }
}
