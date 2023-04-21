import 'package:cafemeet/presentation/about_restaurant_screen/about_restaurant_screen.dart';
import 'package:cafemeet/presentation/restaurants_by_location_screen/restaurants_by_location_screen.dart';

import '../restaurants_by_location_filtered_screen/widgets/listjaywennington1_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:cafemeet/presentation/profile_one_page/profile_one_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:cafemeet/widgets/custom_icon_button.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RestaurantsByLocationFilteredScreen extends StatelessWidget {
  TextEditingController groupSeventyOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 21, top: 65, right: 22),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(41),
                                      width: getHorizontalSize(163),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(163),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .orange300))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("CaféMeet",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtKarlaBold35))
                                          ]))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: groupSeventyOneController,
                                  hintText: "Search",
                                  margin: getMargin(top: 43),
                                  variant: TextFormFieldVariant.White,
                                  textInputAction: TextInputAction.done),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Cafés around you",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage1248x350,
                                  height: getVerticalSize(248),
                                  width: getHorizontalSize(350),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16)),
                                  margin: getMargin(top: 20)),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 26,
                                        width: 26,
                                        onTap: () {
                                          onTapBtnMinimize(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgMinimize)),
                                    CustomButton(
                                        height: getVerticalSize(26),
                                        width: getHorizontalSize(80),
                                        text: "Retail",
                                        margin: getMargin(left: 7),
                                        variant: ButtonVariant.Yellow,
                                        shape: ButtonShape.RoundedBorder14,
                                        padding: ButtonPadding.PaddingAll3)
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(22));
                                      },
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return Listjaywennington1ItemWidget(
                                            onTapRowjaywennington: () =>
                                                onTapRowjaywennington(context));
                                      }))
                            ])))),
               ));
  }

  onTapRowjaywennington(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutRestaurantScreen()));
  }

  onTapBtnMinimize(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantsByLocationScreen()));
  }
}
