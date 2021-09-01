import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class NotifPage extends StatelessWidget {
  final bool isNotif;
  final String isNew;

  NotifPage({this.isNotif = false, this.isNew = ''});
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
                  width: 100,
                ),
                Text(
                  'NOTIFICATION',
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
      return ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 95,
                width: 420,
                color: isNotif ? textWhiteColor : blurGreyColor,
                child: Expanded(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 10,
                            left: 10,
                          ),
                          child: Image.asset(
                            'assets/2.png',
                            width: 70,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Your order #123456789 has been confirmed',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: greyTextStyle2.copyWith(
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 275),
                              child: Text(
                                'NEW',
                                style: orangeTextStyle.copyWith(
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 95,
                width: 420,
                color: isNotif ? blurGreyColor : textWhiteColor,
                child: Expanded(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 10,
                            left: 10,
                          ),
                          child: Image.asset(
                            'assets/lampimg.png',
                            width: 70,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Your order #123456789 has been canceled',
                              style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: greyTextStyle2.copyWith(
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 275),
                              child: Text(
                                isNew,
                                style: orangeTextStyle.copyWith(
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 420,
                height: 95,
                color: isNotif ? textWhiteColor : blurGreyColor,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 5,
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your order #123456789 has been canceled',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                          style: greyTextStyle2.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 330),
                        child: Text(
                          'HOT!',
                          style: redTextStyle.copyWith(
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
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
