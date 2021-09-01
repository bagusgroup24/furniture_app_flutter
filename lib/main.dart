import 'package:flutter/material.dart';
import 'package:furniture/boarding_page.dart';
import 'package:furniture/home/main_page.dart';
import 'package:furniture/home/profil_page.dart';
import 'package:furniture/sign_in_page.dart';
import 'package:furniture/sign_up_page.dart';
import 'package:furniture/widget/cart/cart.dart';
import 'package:furniture/widget/order/my_order_page.dart';
import 'package:furniture/widget/payment/payment_page.dart';
import 'package:furniture/widget/payment/success_page.dart';
import 'package:furniture/widget/produk/detail_produk.dart';
import 'package:furniture/widget/review/my_reviews_page.dart';
import 'package:furniture/widget/shipping/shipping_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => BoardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-product': (context) => DetailProduct(),
        '/cart': (context) => CartPage(),
        '/my-order': (context) => MyOrderPage(),
        '/profil': (context) => ProfilPage(),
        '/my-reviews': (context) => MyReviewsPage(),
        '/payment': (context) => PaymentPage(),
        '/succcess-page': (context) => SuccessPage(),
        '/shipping-page': (context) => ShippingPage(),
      },
    );
  }
}
