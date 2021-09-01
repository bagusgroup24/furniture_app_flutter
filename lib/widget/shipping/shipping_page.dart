import 'package:flutter/material.dart';

import '../../theme.dart';

class ShippingPage extends StatelessWidget {
  final bool isCeklis;
  ShippingPage({this.isCeklis = false});

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
                  width: 90,
                ),
                Text(
                  'Shipping Address',
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
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isCeklis ? primaryColor : Colors.transparent),
                color: isCeklis ? Colors.transparent : primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  'assets/ceklis2.png',
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Use as the shipping address',
              style: greyTextStyle2.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20,
        ),
        height: 127,
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bagus Sanjaya Pratama',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Image.asset(
                    'assets/edit.png',
                    width: 24,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                '25 rue Robert Latouche, Nice, 06200, Côte D’azur, FranceNice',
                style: greyTextStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      );
    }

    Widget header2() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
          left: 20,
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isCeklis ? Colors.transparent : primaryColor),
                color: isCeklis ? primaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  isCeklis ? 'assets/ceklis2.png' : 'assets/ceklis2.png',
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Use as the shipping address',
              style: greyTextStyle2.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget content2() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20,
        ),
        height: 127,
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bagus Sanjaya Pratama',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Image.asset(
                    'assets/edit.png',
                    width: 24,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                '25 rue Robert Latouche, Nice, 06200, Côte D’azur, FranceNice',
                style: greyTextStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 158,
          bottom: 35,
        ),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
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
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/plus2.png'),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: navbar(),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  header(),
                  content(),
                  header2(),
                  content2(),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              footer(),
            ],
          ),
        ],
      ),
    );
  }
}
