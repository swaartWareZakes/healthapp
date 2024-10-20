import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:helpcare/presentation/aleart_screen/aleart_screen.dart';
import 'package:helpcare/presentation/home_page_screen/home_page_screen.dart';
import 'package:helpcare/presentation/profile_screen/profile_screen.dart';
// import 'package:helpcare/presentation/statistics_screen/statistics_screen.dart';

import '../core/app_export.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    HomePageScreen(), // HomePageScreen
    HomePageScreen(), // Redirect to HomePageScreen for Aleart
    HomePageScreen(), // Redirect to HomePageScreen for Statistics
    ProfileScreen(), // Allow navigation to ProfileScreen
  ];

  int selectedNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstant.indigoA700,
        unselectedItemColor: ColorConstant.deepPurple103,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: isDark ? ColorConstant.darkBg : Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: getFontSize(12),
          fontFamily: "Gilroy-Medium",
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: getFontSize(12),
          fontFamily: "Gilroy-Medium",
          fontWeight: FontWeight.w500,
        ),
        currentIndex: selectedNavBarIndex,
        onTap: (index) {
          setState(() {
            // Allow navigation to Profile screen, and keep other screens to HomePageScreen
            if (index == 3) {
              selectedNavBarIndex = index; // Allow navigation to ProfileScreen
            } else {
              selectedNavBarIndex = 0; // Redirect other taps to HomePageScreen
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActiveHome,
              color: ColorConstant.deepPurple103,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.inActiveHome,
              color: ColorConstant.indigoA700,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActive2,
              color: ColorConstant.deepPurple103,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.inActive2,
              color: ColorConstant.indigoA700,
            ),
            label: "Aleart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActive3,
              color: ColorConstant.deepPurple103,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.inActive3,
              color: ColorConstant.indigoA700,
            ),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActive4,
              color: ColorConstant.deepPurple103,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.inActive4,
              color: ColorConstant.indigoA700,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          return (await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                    "Are you sure?",
                    style: TextStyle(fontSize: 13, fontFamily: "Poppins"),
                  ),
                  title: const Text(
                    "Do you want to exit the app?",
                    style: TextStyle(fontSize: 13, fontFamily: "Poppins"),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text(
                        "No",
                        style: TextStyle(
                          color: isDark ? Colors.white : Colors.black,
                          fontSize: 13,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
              )) ??
              false;
        },
        child: screens[selectedNavBarIndex], // Navigate to the correct screen
      ),
    );
  }
}
