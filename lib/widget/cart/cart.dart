import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';
import 'package:furniture/widget/cart/cart_list.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: textWhiteColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'assets/back.png',
                    width: 10,
                  ),
                ),
                SizedBox(
                  width: 115,
                ),
                Text(
                  "MY CART",
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget content() {
      return Stack(
        children: [
          Container(
            color: textWhiteColor,
            height: 500,
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: ListView(
              children: [
                CartList(),
                CartList(),
                CartList(),
                CartList(),
                CartList(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: 335,
                height: 44,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(1, 1),
                      color: primaryColor.withOpacity(0.2),
                    ),
                  ],
                  color: textWhiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Enter your promo code',
                          hintStyle: primaryTextStyle,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 87),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            offset: Offset(1, 1),
                            color: primaryColor.withOpacity(0.2),
                          ),
                        ],
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/next.png',
                          width: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: greyTextStyle2.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      '\$ 95.00',
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: 335,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(1, 1),
                      color: primaryColor.withOpacity(0.2),
                    ),
                  ],
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'CHECK OUT',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: navbar(),
      body: content(),
    );
  }
}
