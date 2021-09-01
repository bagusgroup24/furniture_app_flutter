import 'package:flutter/material.dart';

import '../../theme.dart';

class PaymentPage extends StatelessWidget {
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
                  width: 120,
                ),
                Text(
                  'CHECK-OUT',
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
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Address',
              style: greyTextStyle2.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Image.asset(
              'assets/edit.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: 365,
        height: 130,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: textWhiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              offset: Offset(1, 1),
              color: primaryColor.withOpacity(0.2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                bottom: 10,
              ),
              child: Text(
                'Bagus Sanjaya Pratama',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                bottom: 10,
                right: 20,
              ),
              child: Expanded(
                child: Text(
                  '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                  style: greyTextStyle2,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget headerPayment() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Payment',
              style: greyTextStyle2.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Image.asset(
              'assets/edit.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget contentPayment() {
      return Container(
        width: 365,
        height: 68,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 64,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: textWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: Offset(1, 1),
                    color: primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 7,
                ),
                child: Image.asset(
                  'assets/mastercard.png',
                ),
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Text(
              '**** **** **** 3947',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget total() {
      return Container(
        width: 365,
        height: 155,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: textWhiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              offset: Offset(1, 1),
              color: primaryColor.withOpacity(0.2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order:',
                    style: greyTextStyle2.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$ 95.00',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery:',
                    style: greyTextStyle2.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$ 5.00',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: greyTextStyle2.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$ 100.00',
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

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(
          top: 120,
          right: 20,
          left: 20,
        ),
        width: 380,
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/succcess-page');
          },
          child: Text(
            'SUBMIT ORDER',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: navbar(),
      body: Column(
        children: [
          header(),
          content(),
          headerPayment(),
          contentPayment(),
          total(),
          footer(),
        ],
      ),
    );
  }
}
