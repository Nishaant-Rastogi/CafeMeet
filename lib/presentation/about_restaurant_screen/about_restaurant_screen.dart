import 'package:cafemeet/presentation/book_a_table_screen/book_a_table_screen.dart';

import '../about_restaurant_screen/widgets/listdivyam1_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_subtitle.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AboutRestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Container(
                                    height: getVerticalSize(380),
                                    width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington403x393,
                                          height: getVerticalSize(403),
                                          width: getHorizontalSize(393),
                                          radius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  getHorizontalSize(16)),
                                              bottomRight: Radius.circular(
                                                  getHorizontalSize(16))),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 21,
                                                  right: 22,
                                                  bottom: 28),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomAppBar(
                                                        height:
                                                            getVerticalSize(41),
                                                        leadingWidth: 32,
                                                        leading: AppbarImage(
                                                            height:
                                                                getVerticalSize(
                                                                    19),
                                                            width:
                                                                getHorizontalSize(
                                                                    11),
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            margin: getMargin(
                                                                left: 21,
                                                                top: 12,
                                                                bottom: 9),
                                                            onTap: () =>
                                                                onTapArrowleft4(
                                                                    context)),
                                                        centerTitle: true,
                                                        title: AppbarSubtitle(
                                                            text: "CaféMeet")),
                                                    Container(
                                                        width: double.maxFinite,
                                                        child: Container(
                                                            margin: getMargin(
                                                                top: 158),
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 11,
                                                                right: 18,
                                                                bottom: 11),
                                                            decoration: AppDecoration
                                                                .fillWhiteA700
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              4,
                                                                          right:
                                                                              1),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("Café",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtKarlaMedium22),
                                                                            Padding(
                                                                                padding: getPadding(top: 6, bottom: 2),
                                                                                child: Text("Open till 10PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtKarlaRegular14))
                                                                          ])),
                                                                  Padding(
                                                                      padding:
                                                                          getPadding(
                                                                              top: 10),
                                                                      child: RatingBar.builder(
                                                                          initialRating: 4,
                                                                          minRating: 0,
                                                                          direction: Axis.horizontal,
                                                                          allowHalfRating: false,
                                                                          itemSize: getVerticalSize(21),
                                                                          unratedColor: ColorConstant.orange50,
                                                                          itemCount: 5,
                                                                          updateOnDrag: true,
                                                                          onRatingUpdate: (rating) {},
                                                                          itemBuilder: (context, _) {
                                                                            return Icon(Icons.star,
                                                                                color: ColorConstant.orange300);
                                                                          })),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              8),
                                                                      child: Text(
                                                                          "Library . Cakes . Music",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtKarlaRegular14))
                                                                ])))
                                                  ])))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 21, top: 23),
                                    child: Text("Menu",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaMedium22))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 21, top: 21),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington106x106,
                                          height: getSize(106),
                                          width: getSize(106),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(16))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington106x106,
                                          height: getSize(106),
                                          width: getSize(106),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(16)),
                                          margin: getMargin(left: 15))
                                    ]))),
                            Padding(
                                padding:
                                    getPadding(left: 21, top: 22, right: 21),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Photos",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtKarlaMedium22),
                                      Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 2),
                                          child: Text("View more",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtKarlaMedium12))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 21, top: 22, right: 21),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington106x106,
                                          height: getSize(106),
                                          width: getSize(106),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(16)),
                                          margin: getMargin(bottom: 1)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington106x106,
                                          height: getSize(106),
                                          width: getSize(106),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(16)),
                                          margin:
                                              getMargin(left: 15, bottom: 1)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJaywennington106x106,
                                          height: getSize(106),
                                          width: getSize(106),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(16)),
                                          margin: getMargin(left: 15, top: 1))
                                    ])),
                            Container(
                                height: getVerticalSize(117),
                                width: double.maxFinite,
                                margin: getMargin(top: 4),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                              padding: getPadding(left: 21),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Features",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtKarlaMedium22),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 20),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          137),
                                                                  child: Text(
                                                                      "Library access.\nLive music",
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtKarlaRegular18)),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 48,
                                                                      bottom:
                                                                          30),
                                                                  child: Text(
                                                                      "In house cakes",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtKarlaRegular18Gray900))
                                                            ]))
                                                  ]))),
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 21, top: 19),
                                    child: Text("Location",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaMedium22))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 21, top: 22),
                                    child: Text(
                                        "Okhla Phase 1, New Delhi - 110025",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtKarlaRegular18Gray900))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage11,
                                height: getVerticalSize(147),
                                width: getHorizontalSize(350),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(16)),
                                margin: getMargin(top: 21)),
                            Padding(
                                padding:
                                    getPadding(left: 21, top: 22, right: 21),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Reviews",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtKarlaMedium22),
                                      Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 2),
                                          child: Text("View more",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtKarlaMedium12))
                                    ])),
                            Padding(
                                padding: getPadding(
                                    left: 22, top: 22, right: 21, bottom: 106),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(22));
                                    },
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Listdivyam1ItemWidget();
                                    })),
                            Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: getPadding(
                                            left: 21,
                                            top: 12,
                                            right: 21),
                                        decoration: AppDecoration
                                            .outlineGray5004c,
                                        child: Column(
                                            mainAxisSize:
                                            MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                  height:
                                                  getVerticalSize(55),
                                                  text: "Book a table",
                                                  margin: getMargin(
                                                      bottom: 46),
                                                  variant: ButtonVariant
                                                      .Yellow,
                                                  shape: ButtonShape
                                                      .RoundedBorder14,
                                                  padding: ButtonPadding
                                                      .PaddingAll8,
                                                  fontStyle:
                                                  ButtonFontStyle
                                                      .KarlaSemiBold23,
                                                  onTap: () =>
                                                      onTapBookatable(
                                                          context))
                                                ])))
                          ])))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  onTapBookatable(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => BookATableScreen()));
  }
}
