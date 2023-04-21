import 'package:cafemeet/core/app_export.dart';
// import 'package:cafemeet/core/utils/validation_functions.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:cafemeet/presentation/profile_one_page/profile_one_page.dart';
import 'package:cafemeet/presentation/profile_screen/profile_screen.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_title.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddReviewScreen extends StatelessWidget {
  TextEditingController enternameController = TextEditingController();

  TextEditingController writereviewController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 21, top: 19, bottom: 17),
                    onTap: () => onTapArrowleft2(context)),
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
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: getHorizontalSize(350),
                      margin: getMargin(left: 22, top: 40, right: 21),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Restaurant",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtKarlaMedium22),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: enternameController,
                                hintText: "Enter the name of the restaurant",
                                margin: getMargin(top: 21),
                                shape: TextFormFieldShape.RoundedBorder8,
                                padding: TextFormFieldPadding.PaddingAll7,
                                fontStyle:
                                TextFormFieldFontStyle.KarlaMediumItalic14),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Text("Rating",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium22)),
                            Padding(
                                padding: getPadding(top: 19),
                                child: RatingBar.builder(
                                    initialRating: 5,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    itemSize: getVerticalSize(50),
                                    unratedColor: ColorConstant.orange50,
                                    itemCount: 5,
                                    updateOnDrag: true,
                                    onRatingUpdate: (rating) {},
                                    itemBuilder: (context, _) {
                                      return Icon(Icons.star,
                                          color: ColorConstant.orange50);
                                    })),
                            Padding(
                                padding: getPadding(top: 21),
                                child: Text("Review",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium22)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: writereviewController,
                                hintText: "Write your review",
                                margin: getMargin(top: 22),
                                shape: TextFormFieldShape.RoundedBorder8,
                                padding: TextFormFieldPadding.PaddingT109,
                                fontStyle:
                                TextFormFieldFontStyle.KarlaMediumItalic14,
                                textInputAction: TextInputAction.done,
                                maxLines: 14),
                            CustomButton(
                                height: getVerticalSize(51),
                                text: "Submit review",
                                margin: getMargin(top: 22),
                                prefixWidget: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark)),
                                onTap: () => onTapSubmitreview(context))
                          ]))),
            ),

          ));
  }


  onTapSubmitreview(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
