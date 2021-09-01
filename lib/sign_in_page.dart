import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 65),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Center(
            child: Image.asset(
              'assets/kursi.png',
              width: 315,
              height: 63,
            ),
          ),
        ),
      );
    }

    Widget textHeader() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello !',
              style: greyTextStyle.copyWith(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'WELCOME BACK',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      );
    }

    Widget kotak() {
      return Container(
        width: 345,
        height: 450,
        decoration: BoxDecoration(
          color: textWhiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              offset: Offset(1, 1),
              color: primaryColor.withOpacity(0.2),
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 35,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: greyTextStyle,
              ),
              TextFormField(),
              SizedBox(
                height: 35,
              ),
              Text(
                'Password',
                style: greyTextStyle,
              ),
              TextFormField(
                obscureText: true,
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Text(
                    'Forgot Password',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 285,
                    height: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        'Sign In',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    child: Text(
                      'Sign Up',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          textHeader(),
          kotak(),
        ],
      ),
    );
  }
}
