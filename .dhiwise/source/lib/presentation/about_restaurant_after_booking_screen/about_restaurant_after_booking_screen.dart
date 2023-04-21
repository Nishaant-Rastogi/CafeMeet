import '../about_restaurant_after_booking_screen/widgets/listdivyam_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_page/homepage_page.dart';
import 'package:cafemeet/presentation/profile1_page/profile1_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_subtitle.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class AboutRestaurantAfterBookingScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          height: getVerticalSize(403),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgJaywennington403x393,
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
                                            left: 21, right: 22, bottom: 28),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomAppBar(
                                                  height: getVerticalSize(41),
                                                  leadingWidth: 32,
                                                  leading: AppbarImage(
                                                      height:
                                                          getVerticalSize(19),
                                                      width:
                                                          getHorizontalSize(11),
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      margin: getMargin(
                                                          left: 21,
                                                          top: 12,
                                                          bottom: 9),
                                                      onTap: () =>
                                                          onTapArrowleft(
                                                              context)),
                                                  centerTitle: true,
                                                  title: AppbarSubtitle(
                                                      text: "CaféMeet")),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowticket(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 123, right: 14),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgTicket,
                                                                height:
                                                                    getSize(13),
                                                                width:
                                                                    getSize(13),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2,
                                                                        bottom:
                                                                            3)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10),
                                                                child: Text(
                                                                    "Write a review",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKarlaMedium16
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline)))
                                                          ]))),
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                          getMargin(top: 15),
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
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4,
                                                                        right:
                                                                            1),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "Café",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtKarlaMedium22),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  6,
                                                                              bottom:
                                                                                  2),
                                                                          child: Text(
                                                                              "Open till 10PM",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtKarlaRegular14))
                                                                    ])),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 10),
                                                                child: RatingBar
                                                                    .builder(
                                                                        initialRating:
                                                                            4,
                                                                        minRating:
                                                                            0,
                                                                        direction:
                                                                            Axis
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
                                                                              Icons.star);
                                                                        })),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "Library . Cakes . Music",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKarlaRegular14))
                                                          ])))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 22, top: 22, right: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Reservation time",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaMedium22),
                                    Container(
                                        width: getHorizontalSize(78),
                                        padding: getPadding(
                                            left: 10,
                                            top: 2,
                                            right: 10,
                                            bottom: 2),
                                        decoration: AppDecoration.txtBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder12),
                                        child: Text("Contact",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtKarlaRegular16Gray900))
                                  ]))),
                      Container(
                          width: getHorizontalSize(219),
                          margin: getMargin(left: 21, top: 21),
                          child: Text(
                              "Check in time - 5:30 PM\nCheck out time - 7:00 PM",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaRegular18)),
                      Padding(
                          padding: getPadding(left: 21, top: 20),
                          child: Text("Menu",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22)),
                      Padding(
                          padding: getPadding(left: 21, top: 21),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgJaywennington106x106,
                                height: getSize(106),
                                width: getSize(106),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(16))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgJaywennington106x106,
                                height: getSize(106),
                                width: getSize(106),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(16)),
                                margin: getMargin(left: 15))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 22, right: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Photos",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaMedium22),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 2),
                                        child: Text("View more",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtKarlaMedium12))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 22, right: 21),
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
                                        margin: getMargin(left: 15, bottom: 1)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgJaywennington106x106,
                                        height: getSize(106),
                                        width: getSize(106),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(16)),
                                        margin: getMargin(left: 15, top: 1))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 21, top: 23),
                          child: Text("Features",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22)),
                      Padding(
                          padding: getPadding(left: 21, top: 20, right: 46),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(137),
                                    child: Text("Library access.\nLive music",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaRegular18)),
                                Padding(
                                    padding: getPadding(bottom: 30),
                                    child: Text("In house cakes",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtKarlaRegular18Gray900))
                              ])),
                      Padding(
                          padding: getPadding(left: 21, top: 19),
                          child: Text("Location",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22)),
                      Padding(
                          padding: getPadding(left: 21, top: 22),
                          child: Text("Okhla Phase 1, New Delhi - 110025",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaRegular18Gray900)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage1147x350,
                          height: getVerticalSize(147),
                          width: getHorizontalSize(350),
                          radius: BorderRadius.circular(getHorizontalSize(16)),
                          alignment: Alignment.center,
                          margin: getMargin(top: 21)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 21, top: 22, right: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Reviews",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKarlaMedium22),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 2),
                                        child: Text("View more",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtKarlaMedium12))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 22, top: 22, right: 21),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(22));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListdivyamItemWidget();
                                  })))
                    ]))),
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

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapRowticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addReviewScreen);
  }
}
