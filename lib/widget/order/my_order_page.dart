import 'package:flutter/material.dart';
import 'package:furniture/widget/order/my_order_list.dart';

import '../../theme.dart';

class MyOrderPage extends StatelessWidget {
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
                  width: 130,
                ),
                Text(
                  'MY ORDERS',
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

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Row(
          children: [
            DefaultTabController(
              length: 3,
              child: TabBar(
                indicatorColor: primaryColor,
                isScrollable: true,
                labelColor: primaryColor,
                unselectedLabelColor: GreyColor2,
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
                unselectedLabelStyle: greyTextStyle2.copyWith(
                  fontSize: 16,
                ),
                labelPadding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                indicatorPadding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                indicatorWeight: 4,
                tabs: [
                  Text("Delivered"),
                  Text("Processing"),
                  Text("Canceled"),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget kotak() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            MyOrderList(),
            MyOrderList(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: navbar(),
      body: ListView(
        children: [
          content(),
          kotak(),
        ],
      ),
    );
  }
}
