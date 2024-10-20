import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helpcare/core/app_export.dart';
import 'package:helpcare/presentation/profile_screen/widgets/language_setting_screen.dart';
import 'package:helpcare/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:helpcare/widgets/spacing.dart';
import '../../main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(right: 20, left: 20, top: 20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HorizontalSpace(width: 50),
                      Padding(
                        padding: getPadding(
                          top: 12,
                          bottom: 17,
                        ),
                        child: Text(
                          "Profile",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Gilroy-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 0,
                          bottom: 0,
                        ),
                        child: CommonImageView(
                          isDark: isDark,
                          svgPath: ImageConstant.imgOption,
                          height: getVerticalSize(
                            3.00,
                          ),
                          width: getHorizontalSize(
                            17.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 0,
                          right: 24,
                        ),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 15,
                                    top: 22,
                                    right: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: ColorConstant.indigoA700,
                                      width: getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          all: 5,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              500.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.profile,
                                            height: getSize(
                                              100.00,
                                            ),
                                            width: getSize(
                                              100.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 20,
                                  ),
                                  child: Text(
                                    "Micheal Smith",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 23,
                                    top: 12,
                                    right: 23,
                                  ),
                                  child: Text(
                                    "Web Developer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        325.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 10,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.bluegray50,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(
                            left: 0,
                            top: 0,
                            right: 0,
                          ),
                          child: FadeInDown(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                svgPath: ImageConstant.profile1,
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "User Details",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonImageView(
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.profile1Arrow,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                svgPath: ImageConstant.profile2,
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "Edit Profile",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonImageView(
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.profile2Arrow,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                svgPath: ImageConstant.profile3,
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "Privacy",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonImageView(
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.profile3Arrow,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding: getPadding(all: 13),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .deepOrange50,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.coloredEye,
                                                ),
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "Dark Mode",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          FlutterSwitch(
                                            width: 50.0,
                                            height: 25.0,
                                            activeColor:
                                                ColorConstant.deepOrangeA200,
                                            inactiveColor:
                                                ColorConstant.deepOrange50,
                                            valueFontSize: 25.0,
                                            toggleSize: 20.0,
                                            borderRadius: 30.0,
                                            showOnOff: false,
                                            onToggle: (val) {
                                              setState(() {});
                                              themeManager.toggleTheme(val);
                                            },
                                            value: themeManager.themeMode ==
                                                ThemeMode.dark,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        )),
                                        builder: (context) {
                                          return LightSettingsLanguageScreen();
                                        });
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                svgPath: ImageConstant.language,
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "lagnuage",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonImageView(
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.profile2Arrow,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                          top: 13.0,
                                          bottom: 13.0,
                                          left: 24,
                                          right: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                svgPath: ImageConstant.profile4,
                                              ),
                                              HorizontalSpace(width: 14),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 14,
                                                  bottom: 17,
                                                ),
                                                child: Text(
                                                  "Help Center",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CommonImageView(
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.profile4Arrow,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => SignInOneScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                              top: 13.0, bottom: 13.0, left: 24, right: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.signout,
                                  ),
                                  HorizontalSpace(width: 14),
                                  Padding(
                                    padding: getPadding(
                                      left: 0,
                                      top: 14,
                                      bottom: 17,
                                    ),
                                    child: Text(
                                      "Sign Out",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Gilroy-Medium',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
