import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-product');
                  },
                  child: Image.asset(
                    'assets/lampimg.png',
                    width: 157,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 117,
                  top: 160,
                ),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: textColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Image.asset(
                    'assets/tas.png',
                    width: 157,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Black Simple Lamp',
            style: greyTextStyle,
          ),
          Text(
            '\$ 12.00',
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
