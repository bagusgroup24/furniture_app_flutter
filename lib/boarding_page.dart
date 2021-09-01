import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class BoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MAKE YOUR',
              style: greyTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'HOME BEAUTIFUL',
              style: primaryTextStyle.copyWith(
                fontSize: 30,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Text(
                'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                style: greyTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 154,
            ),
            Container(
              height: 54,
              width: 159,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/boarding.png'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 231),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: header(),
            ),
          ),
        ],
      ),
    );
  }
}
