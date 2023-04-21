import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.KarlaMediumItalic14:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case TextFormFieldFontStyle.KarlaMedium14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case TextFormFieldFontStyle.KarlaMedium16:
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
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.18,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray900,
            width: 2,
          ),
        );
      case TextFormFieldVariant.OutlineGray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray900,
            width: 2,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray900:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.orange50;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return true;
      case TextFormFieldVariant.OutlineGray900:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTop10:
        return getPadding(
          top:10,
          bottom:10
        );
      case TextFormFieldPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case TextFormFieldPadding.PaddingT109:
        return getPadding(
          left: 11,
          top: 109,
          right: 11,
          bottom: 109,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  RoundedBorder8,
}

enum TextFormFieldPadding {
  PaddingAll14,
  PaddingAll7,
  PaddingTop10,
  PaddingT109,
}

enum TextFormFieldVariant {
  None,
  White,
  OutlineGray900,
  FillOrange50,
}

enum TextFormFieldFontStyle {
  KarlaMedium22,
  KarlaMediumItalic14,
  KarlaMedium14,
  KarlaMedium16,
}
