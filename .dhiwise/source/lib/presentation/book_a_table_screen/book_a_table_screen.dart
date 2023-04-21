import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_title.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookATableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(106),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 21, top: 12, bottom: 9),
                    onTap: () => onTapArrowleft5(context)),
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
                            getPadding(left: 21, top: 48, right: 21, bottom: 5),
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
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Number of seats",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Padding(
                                  padding: getPadding(left: 1, top: 22),
                                  child: Row(children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapRectanglethirty(context);
                                        },
                                        child: Container(
                                            height: getVerticalSize(32),
                                            width: getHorizontalSize(83),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.orange50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            8))))),
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
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Time",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Padding(
                                  padding: getPadding(left: 1, top: 22),
                                  child: Row(children: [
                                    Container(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(83),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.orange50,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 6, bottom: 6),
                                        child: Text("to",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtKarlaMedium16Gray900)),
                                    Container(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(83),
                                        margin: getMargin(left: 14),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.orange50,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8))))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 24),
                                  child: Text("Seating area",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(350),
                                      margin: getMargin(left: 1, top: 19),
                                      padding: getPadding(
                                          left: 11,
                                          top: 10,
                                          right: 11,
                                          bottom: 10),
                                      decoration: AppDecoration.fillOrange50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowdown,
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(15))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Contact number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Container(
                                  height: getVerticalSize(32),
                                  width: getHorizontalSize(350),
                                  margin: getMargin(left: 1, top: 22),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.orange50,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8)))),
                              Container(
                                  height: getVerticalSize(51),
                                  width: getHorizontalSize(350),
                                  margin: getMargin(left: 1, top: 22),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(
                                                    top: 9, right: 126),
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
                                            variant:
                                                ButtonVariant.OutlineOrange300,
                                            fontStyle: ButtonFontStyle
                                                .KarlaMedium16Orange300,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmarkOrange300)),
                                            alignment: Alignment.center)
                                      ]))
                            ]))))));
  }

  onTapRectanglethirty(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookATableOneScreen);
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
