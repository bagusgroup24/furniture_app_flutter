import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';
import 'package:furniture/widget/order/my_order_page.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'SUCCESS!',
          style: primaryTextStyle.copyWith(
            fontSize: 36,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget body() {
      return Stack(
        children: [
          Image.asset(
            'assets/success.png',
            width: 268,
          ),
          Container(
            margin: EdgeInsets.only(top: 200, left: 100),
            child: Image.asset(
              'assets/ceklis.png',
              width: 50,
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Padding(
        padding: EdgeInsets.only(
          left: 47,
          top: 25,
        ),
        child: Expanded(
          child: Text(
            'Your order will be delivered soon. Thank you for choosing our app!',
            style: greyTextStyle2.copyWith(
              fontSize: 18,
              wordSpacing: 2,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyOrderPage();
                  }));
                },
                child: Text(
                  'TRACK YOUR ORDERS',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'BACK TO HOME',
                  style: primaryTextStyle.copyWith(
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
      backgroundColor: GreyColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          header(),
          body(),
          content(),
          footer(),
        ],
      ),
    );
  }
}
