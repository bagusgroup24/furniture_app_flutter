import 'package:flutter/material.dart';
import 'package:furniture/home/marker_page.dart';
import 'package:furniture/home/notif_page.dart';
import 'package:furniture/home/profil_page.dart';
import 'package:furniture/theme.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customNav() {
      return BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: textWhiteColor,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/home.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : navColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/marker.png',
                  width: 21,
                  color: currentIndex == 1 ? primaryColor : navColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/bell.png',
                  width: 21,
                  color: currentIndex == 2 ? primaryColor : navColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/profil.png',
                  width: 21,
                  color: currentIndex == 3 ? primaryColor : navColor,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return MarkerPage();
          break;
        case 2:
          return NotifPage();
          break;
        case 3:
          return ProfilPage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customNav(),
      body: body(),
    );
  }
}
