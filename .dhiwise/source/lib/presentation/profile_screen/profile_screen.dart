import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_page/homepage_page.dart';
import 'package:cafemeet/presentation/profile1_page/profile1_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 31, right: 21, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, top: 34),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              height: getVerticalSize(41),
                                              width: getHorizontalSize(163),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    16),
                                                            width:
                                                                getHorizontalSize(
                                                                    163),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .orange300))),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text("CaféMeet",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtKarlaBold35))
                                                  ]))),
                                      Padding(
                                          padding: getPadding(top: 52),
                                          child: Text("Hey Divyam",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtKarlaMedium22)),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("+91 12345 67890",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtKarlaMedium14)),
                                      Padding(
                                          padding: getPadding(top: 37),
                                          child: Text("Reviews",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtKarlaMedium22))
                                    ]),
                                Container(
                                    margin: getMargin(top: 89, bottom: 61),
                                    padding: getPadding(
                                        left: 13, top: 7, right: 13, bottom: 7),
                                    decoration: AppDecoration.black.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgEdit,
                                              height: getSize(16),
                                              width: getSize(16),
                                              margin: getMargin(top: 3)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("Edit",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtKarlaMedium12))
                                        ]))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowjaywennington(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgJaywennington,
                                        height: getVerticalSize(91),
                                        width: getHorizontalSize(95),
                                        radius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                getHorizontalSize(16)),
                                            bottomLeft: Radius.circular(
                                                getHorizontalSize(16)))),
                                    Expanded(
                                        child: Container(
                                            padding: getPadding(
                                                left: 10,
                                                top: 6,
                                                right: 10,
                                                bottom: 6),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderLR16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 3),
                                                      child: Row(children: [
                                                        Text("Café",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtKarlaMedium20),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 85,
                                                                top: 2),
                                                            child: RatingBar
                                                                .builder(
                                                                    initialRating:
                                                                        4,
                                                                    minRating:
                                                                        0,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    allowHalfRating:
                                                                        false,
                                                                    itemSize:
                                                                        getVerticalSize(
                                                                            21),
                                                                    unratedColor:
                                                                        ColorConstant
                                                                            .orange50,
                                                                    itemCount:
                                                                        5,
                                                                    updateOnDrag:
                                                                        true,
                                                                    onRatingUpdate:
                                                                        (rating) {},
                                                                    itemBuilder:
                                                                        (context,
                                                                            _) {
                                                                      return Icon(
                                                                          Icons
                                                                              .star);
                                                                    }))
                                                      ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          211),
                                                      margin: getMargin(
                                                          left: 3,
                                                          top: 15,
                                                          bottom: 10),
                                                      child: Text(
                                                          "This is a review of the restaurant. This is a review of the restaurant. This is a review ...",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtKarlaMediumItalic12))
                                                ])))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(51),
                          width: getHorizontalSize(161),
                          text: "Write a review",
                          prefixWidget: Container(
                              margin: getMargin(right: 10),
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgTicket)),
                          onTap: () => onTapWriteareview(context))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Booked:
        return AppRoutes.bookedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profile1Page;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.bookedPage:
        return BookedPage();
      case AppRoutes.profile1Page:
        return Profile1Page();
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }

  onTapRowjaywennington(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewScreen);
  }

  onTapWriteareview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addReviewScreen);
  }
}
