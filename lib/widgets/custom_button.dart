import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT5:
        return getPadding(
          top: 5,
          right: 5,
          bottom: 5,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      default:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.Yellow:
        return ColorConstant.orange300;
      case ButtonVariant.FillOrange50:
        return ColorConstant.orange50;
      case ButtonVariant.OutlineGray900:
      case ButtonVariant.OutlineOrange300:
        return null;
      default:
        return ColorConstant.gray900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray900:
        return BorderSide(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineOrange300:
        return BorderSide(
          color: ColorConstant.orange300,
          width: getHorizontalSize(
            2.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.KarlaMedium16Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.19,
          ),
        );
      case ButtonFontStyle.KarlaSemiBold23:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            23,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.17,
          ),
        );
      case ButtonFontStyle.KarlaMedium16Orange300:
        return TextStyle(
          color: ColorConstant.orange300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.19,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.19,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder25,
  RoundedBorder14,
  RoundedBorder8,
}

enum ButtonPadding {
  PaddingT16,
  PaddingT5,
  PaddingAll8,
  PaddingAll3,
}

enum ButtonVariant {
  Black,
  OutlineGray900,
  Yellow,
  OutlineOrange300,
  FillOrange50,
}

enum ButtonFontStyle {
  KarlaMedium16,
  KarlaMedium16Gray900,
  KarlaSemiBold23,
  KarlaMedium16Orange300,
}
