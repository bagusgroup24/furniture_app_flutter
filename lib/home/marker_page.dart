import 'package:flutter/material.dart';
import 'package:furniture/widget/favorite/favorite_list.dart';

import '../theme.dart';

class MarkerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: textWhiteColor,
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/search.png',
                  width: 24,
                ),
                Text(
                  'FAVORITE',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Image.asset(
                    'assets/cart.png',
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget favorite() {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: Column(
              children: [
                FavoriteList(),
                FavoriteList(),
                FavoriteList(),
                FavoriteList(),
                FavoriteList(),
                FavoriteList(),
              ],
            ),
          ),
        ],
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
                      'Add all to my cart',
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
      appBar: navbar(),
      body: Stack(
        children: [
          favorite(),
          footer(),
        ],
      ),
    );
  }
}
