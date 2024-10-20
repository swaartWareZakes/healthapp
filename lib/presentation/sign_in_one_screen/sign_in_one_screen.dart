import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helpcare/core/app_export.dart';
import 'package:helpcare/models/image_tilte_model.dart';
import 'package:helpcare/presentation/forget_pass1_screen/forget_pass1_screen.dart';
import 'package:helpcare/presentation/home.dart';
import 'package:helpcare/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:helpcare/widgets/custom_button.dart';
import 'package:helpcare/widgets/custom_text_form_field.dart';
import 'package:helpcare/widgets/spacing.dart';

class SignInOneScreen extends StatefulWidget {
  const SignInOneScreen({Key? key}) : super(key: key);

  @override
  State<SignInOneScreen> createState() => _SignInOneScreenState();
}

class _SignInOneScreenState extends State<SignInOneScreen> {
  bool switchVal = false;

  bool obsecur = true;
  List<ImageTitleModel> dropdownItemList1 = [
    ImageTitleModel(img: ImageConstant.fb, title: "Sign In with Facebook"),
  ];

  Object? value1;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 25,
                      top: 40,
                      right: 25,
                      bottom: 40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          margin: getMargin(
                            left: 38,
                            right: 38,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.appLogo,
                                height: getVerticalSize(
                                  87.00,
                                ),
                                width: getHorizontalSize(
                                  74.00,
                                ),
                              ),
                              HorizontalSpace(width: 22),
                              Container(
                                width: getHorizontalSize(
                                  132.00,
                                ),
                                margin: getMargin(
                                  left: 0,
                                  top: 15,
                                  bottom: 17,
                                ),
                                child: Text(
                                  "BKHealth\nLaboratory".toUpperCase(),
                                  maxLines: null,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      24,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 38,
                            top: 62,
                            right: 38,
                          ),
                          child: Text(
                            "Sign In with BKHealth App",
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
                        Container(
                          height: getVerticalSize(
                            2.00,
                          ),
                          width: getHorizontalSize(
                            50.00,
                          ),
                          margin: getMargin(
                            left: 38,
                            top: 16,
                            right: 38,
                          ),
                          decoration: BoxDecoration(
                            color: isDark ? Colors.white : Colors.black,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(top: 13),
                          width: getHorizontalSize(325),
                          height: getVerticalSize(56),
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(12),
                              right: getHorizontalSize(12),
                              top: getVerticalSize(15),
                              bottom: getVerticalSize(0)),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstant.gray100,
                                spreadRadius: getHorizontalSize(
                                  5.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  7.00,
                                ),
                                offset: const Offset(
                                  0,
                                  3,
                                ),
                              ),
                            ],
                            color: isDark
                                ? ColorConstant.darkTextField
                                : ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                8.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.deepPurple100,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              autofocus: true,
                              value: value1,
                              isExpanded: true,
                              icon: Container(
                                child: Padding(
                                  padding: getPadding(bottom: 16),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.bluegray400,
                                  ),
                                ),
                              ),
                              hint: Padding(
                                padding: getPadding(top: 5),
                                child: Text(
                                  'Sign in with...',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.bluegray300,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Gilroy-Medium',
                                    fontWeight: FontWeight.w500,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  value1 = value;
                                });
                              },
                              items: dropdownItemList1
                                  .map<DropdownMenuItem<ImageTitleModel>>(
                                      (ImageTitleModel value) {
                                return DropdownMenuItem<ImageTitleModel>(
                                  value: value,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorConstant.gray100,
                                          spreadRadius: getHorizontalSize(
                                            5.00,
                                          ),
                                          blurRadius: getHorizontalSize(
                                            7.00,
                                          ),
                                          offset: const Offset(
                                            0,
                                            3,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: getPadding(left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Image.asset(value.img),
                                          HorizontalSpace(width: 14),
                                          Text(
                                            value.title,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              selectedItemBuilder: (BuildContext context) {
                                return dropdownItemList1
                                    .map((ImageTitleModel value) {
                                  return Padding(
                                    padding: getPadding(bottom: 10),
                                    child: Padding(
                                      padding: getPadding(left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Image.asset(value.img),
                                          HorizontalSpace(width: 14),
                                          Text(
                                            value.title,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 38,
                            top: 20,
                            right: 38,
                          ),
                          child: Text(
                            "OR",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          isDark: isDark,
                          width: 325,
                          focusNode: FocusNode(),
                          hintText: "Enter your Email",
                          margin: getMargin(
                            top: 24,
                          ),
                          alignment: Alignment.centerLeft,
                          suffix: Container(
                            margin: getMargin(
                              left: 20,
                              top: 21,
                              right: 20,
                              bottom: 21,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgCheckmark12X15,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              15.00,
                            ),
                            minHeight: getVerticalSize(
                              12.00,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          isDark: isDark,
                          width: 325,
                          focusNode: FocusNode(),
                          hintText: "Enter your Password",
                          margin: getMargin(
                            top: 22,
                          ),
                          variant: TextFormFieldVariant.OutlineDeeppurple101,
                          padding: TextFormFieldPadding.PaddingT19,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerLeft,
                          suffix: GestureDetector(
                            onTap: () {
                              setState(() {
                                obsecur = !obsecur;
                              });
                            },
                            child: Container(
                              margin: getMargin(
                                left: 20,
                                top: 16,
                                right: 20,
                                bottom: 16,
                              ),
                              child: SvgPicture.asset(
                                obsecur
                                    ? ImageConstant.visibilityOff
                                    : ImageConstant.visibilityOn,
                                color: ColorConstant.bluegray300,
                                width: getHorizontalSize(20),
                                height: getVerticalSize(20),
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              14.00,
                            ),
                            minHeight: getVerticalSize(
                              12.00,
                            ),
                          ),
                          isObscureText: obsecur,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FlutterSwitch(
                                      value: switchVal,
                                      height: getHorizontalSize(19),
                                      width: getHorizontalSize(32.3),
                                      toggleSize: 15.2,
                                      borderRadius: getHorizontalSize(
                                        9.50,
                                      ),
                                      activeColor: ColorConstant.indigoA700,
                                      activeToggleColor:
                                          ColorConstant.whiteA700,
                                      inactiveColor: isDark
                                          ? ColorConstant.darkChoice
                                          : ColorConstant.indigo50,
                                      inactiveToggleColor:
                                          ColorConstant.whiteA700,
                                      onToggle: (value) {
                                        setState(() {
                                          switchVal = !switchVal;
                                        });
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        right: 9,
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Remember Me",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Gilroy-Medium',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 1,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetPass1Screen()),
                                      );
                                    },
                                    child: Text(
                                      "Forget Password ?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Gilroy-Medium',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomButton(
                          width: 325,
                          text: "Sign In".toUpperCase(),
                          margin: getMargin(
                            top: 39,
                          ),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) => Home()),
                                (Route<dynamic> route) => false);
                          },
                        ),
                        Padding(
                          padding: getPadding(
                            left: 38,
                            top: 39,
                            right: 38,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Dont’t have Account?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                HorizontalSpace(width: 7),
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                  ),
                                  child: Text(
                                    "Sign Up",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.indigoA700,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
