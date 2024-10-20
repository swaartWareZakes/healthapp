import 'dart:async';
import 'package:flutter/material.dart';
import 'package:helpcare/core/app_export.dart';

import '../sign_in_one_screen/sign_in_one_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => SignInOneScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  left: 0,
                  top: 0,
                  right: 0,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.appLogo,
                  height: getVerticalSize(
                    135.00,
                  ),
                  width: getHorizontalSize(
                    116.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 66,
                  top: 44,
                  right: 66,
                  bottom: 20,
                ),
                child: Text(
                  "BKHealth Laboratory ".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.indigoA700,
                    fontSize: getFontSize(
                      24,
                    ),
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
