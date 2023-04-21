import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_page/homepage_page.dart';
import 'package:cafemeet/presentation/profile1_page/profile1_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_title.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ReviewScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 21, top: 19, bottom: 17),
                    onTap: () => onTapArrowleft1(context)),
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
            body: Container(
                width: getHorizontalSize(350),
                margin: getMargin(left: 22, top: 40, right: 20),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(29),
                          width: getHorizontalSize(83),
                          text: "Edit",
                          variant: ButtonVariant.OutlineGray900,
                          shape: ButtonShape.RoundedBorder14,
                          padding: ButtonPadding.PaddingT5,
                          fontStyle: ButtonFontStyle.KarlaMedium16Gray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 10),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray900),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEditGray900)),
                          onTap: () => onTapEdit(context)),
                      CustomImageView(
                          imagePath: ImageConstant.imgJaywennington194x350,
                          height: getVerticalSize(194),
                          width: getHorizontalSize(350),
                          radius: BorderRadius.circular(getHorizontalSize(16)),
                          margin: getMargin(top: 12)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Café",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium22),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(22),
                                        unratedColor: ColorConstant.orange50,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star);
                                        }))
                              ])),
                      Container(
                          height: getVerticalSize(272),
                          width: getHorizontalSize(350),
                          margin: getMargin(top: 25),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        width: getHorizontalSize(350),
                                        child: Text(
                                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. \n\nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                                            maxLines: null,
                                            textAlign: TextAlign.justify,
                                            style: AppStyle
                                                .txtKarlaRegular14Gray900))),
                                CustomButton(
                                    height: getVerticalSize(51),
                                    width: getHorizontalSize(161),
                                    text: "Write a review",
                                    prefixWidget: Container(
                                        margin: getMargin(right: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgTicket)),
                                    onTap: () => onTapWriteareview(context),
                                    alignment: Alignment.bottomRight)
                              ]))
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

  onTapEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewEditScreen);
  }

  onTapWriteareview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addReviewScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
