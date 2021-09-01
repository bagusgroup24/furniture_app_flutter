import 'package:flutter/material.dart';

import '../../theme.dart';

class MyOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 335,
          height: 172,
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
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Order No238562312',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '20/03/2020',
                      style: greyTextStyle2,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: blurGreyColor,
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 25),
                child: Row(
                  children: [
                    Text(
                      'Quantity :',
                      style: greyTextStyle2.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '03',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Total Amount :',
                      style: greyTextStyle2.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '\$150',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: 100,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      color: primaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Detail',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Delivered',
                      style: hijauTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
