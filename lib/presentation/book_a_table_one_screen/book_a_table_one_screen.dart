import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_title.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BookATableOneScreen extends StatelessWidget {
  TextEditingController groupThirtyTwoController = TextEditingController();

  TextEditingController groupThirtySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(106),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 21, top: 12, bottom: 9),
                    onTap: () => onTapArrowleft6(context)),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(41),
                    width: getHorizontalSize(163),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: getVerticalSize(16),
                              width: getHorizontalSize(163),
                              margin: getMargin(top: 24),
                              decoration: BoxDecoration(
                                  color: ColorConstant.orange300))),
                      AppbarTitle(
                          text: "CaféMeet",
                          margin: getMargin(left: 2, right: 3))
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 22, top: 48, right: 21, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgJaywennington194x350,
                                  height: getVerticalSize(194),
                                  width: getHorizontalSize(350),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Number of seats",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Row(children: [
                                    CustomButton(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(83),
                                        text: "3",
                                        variant: ButtonVariant.FillOrange50,
                                        shape: ButtonShape.RoundedBorder8,
                                        padding: ButtonPadding.PaddingAll8,
                                        fontStyle: ButtonFontStyle
                                            .KarlaMedium16Gray900),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 6, bottom: 6),
                                        child: Text("Seats",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtKarlaMedium16Gray900))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Time",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Row(children: [
                                    CustomButton(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(83),
                                        text: "5:30 PM",
                                        variant: ButtonVariant.FillOrange50,
                                        shape: ButtonShape.RoundedBorder8,
                                        padding: ButtonPadding.PaddingAll8,
                                        fontStyle: ButtonFontStyle
                                            .KarlaMedium16Gray900),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 6, bottom: 6),
                                        child: Text("to",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtKarlaMedium16Gray900)),
                                    CustomButton(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(83),
                                        text: "7:30 PM",
                                        margin: getMargin(left: 14),
                                        variant: ButtonVariant.FillOrange50,
                                        shape: ButtonShape.RoundedBorder8,
                                        padding: ButtonPadding.PaddingAll8,
                                        fontStyle: ButtonFontStyle
                                            .KarlaMedium16Gray900)
                                  ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Seating area",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: groupThirtyTwoController,
                                  hintText: "Balcony",
                                  margin: getMargin(top: 19),
                                  shape: TextFormFieldShape.RoundedBorder8,
                                  padding: TextFormFieldPadding.PaddingAll7,
                                  fontStyle:
                                      TextFormFieldFontStyle.KarlaMedium16),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Contact number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: groupThirtySixController,
                                  hintText: "+91 12345 67890",
                                  margin: getMargin(top: 22),
                                  shape: TextFormFieldShape.RoundedBorder8,
                                  padding: TextFormFieldPadding.PaddingAll7,
                                  fontStyle:
                                      TextFormFieldFontStyle.KarlaMedium16,
                                  textInputAction: TextInputAction.done),
                              Container(
                                  height: getVerticalSize(51),
                                  width: getHorizontalSize(350),
                                  margin: getMargin(top: 22),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(top: 9),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5))))),
                                        CustomButton(
                                            height: getVerticalSize(51),
                                            width: getHorizontalSize(350),
                                            text: "Confirm booking",
                                            variant: ButtonVariant.Yellow,
                                            fontStyle: ButtonFontStyle
                                                .KarlaMedium16Gray900,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmarkGray900)),
                                            alignment: Alignment.center)
                                      ]))
                            ]))))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
