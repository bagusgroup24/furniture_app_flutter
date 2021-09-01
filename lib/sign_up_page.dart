import 'package:flutter/material.dart';
import 'package:furniture/theme.dart';

class SignUpPage extends StatelessWidget {
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
              'WELCOME',
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
        height: 600,
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
            top: 30,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: greyTextStyle,
              ),
              TextFormField(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Email',
                style: greyTextStyle,
              ),
              TextFormField(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Password',
                style: greyTextStyle,
              ),
              TextFormField(
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Confirm Password',
                style: greyTextStyle,
              ),
              TextFormField(
                obscureText: true,
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
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
                        'Sign Up',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account? ',
                        style: greyTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign-in');
                        },
                        child: Text(
                          'Sign In',
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
