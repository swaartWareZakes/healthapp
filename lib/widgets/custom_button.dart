import 'package:flutter/material.dart';
import 'package:helpcare/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text})
      : super(key: key);

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: _buildDecoration(),
        margin: margin,
        padding: _setPadding(),
        width: getHorizontalSize(width ?? 0),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 20,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case ButtonVariant.FillIndigoA700:
        return ColorConstant.indigoA700;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGreen50:
        return ColorConstant.green50;
      default:
        return ColorConstant.indigoA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.FillIndigo50:
      case ButtonVariant.FillIndigoA700:
      // return  [
      //                                   BoxShadow(
      //                                     color: ColorConstant.indigo50,
      //                                     spreadRadius: getHorizontalSize(
      //                                      15.00,
      //                                     ),
      //                                     blurRadius: getHorizontalSize(
      //                                       8.00,
      //                                     ),
      //                                     offset: Offset(
      //                                       0,
      //                                       5,
      //                                     ),
      //                                   ),
      //                                 ];

      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGreen50:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.indigo50,
            spreadRadius: getHorizontalSize(
              15.00,
            ),
            blurRadius: getHorizontalSize(
              8.00,
            ),
            offset: const Offset(
              0,
              5,
            ),
          ),
        ];
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GilroyMedium12:
        return TextStyle(
          color: ColorConstant.indigoA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GilroyMedium12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GilroyRegular14:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GilroyMedium16IndigoA700:
        return TextStyle(
          color: ColorConstant.indigoA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder4,
}

enum ButtonPadding {
  PaddingAll20,
  PaddingAll12,
}

enum ButtonVariant {
  OutlineDeeppurple9002b,
  FillIndigo50,
  FillIndigoA700,
  FillWhiteA700,
  FillGreen50,
}

enum ButtonFontStyle {
  GilroyMedium16,
  GilroyMedium12,
  GilroyMedium12WhiteA700,
  GilroyRegular14,
  GilroyMedium16IndigoA700,
}
