import '../search_page/widgets/search_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  TextEditingController group307Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 21,
                  top: 45,
                  right: 21,
                  bottom: 45,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          41,
                        ),
                        width: getHorizontalSize(
                          163,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: getVerticalSize(
                                  16,
                                ),
                                width: getHorizontalSize(
                                  163,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.orange300,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "CaféMeet",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtKarlaBold35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group307Controller,
                      hintText: "Search",
                      margin: getMargin(
                        left: 1,
                        top: 43,
                      ),
                      variant: TextFormFieldVariant.White,
                      textInputAction: TextInputAction.done,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 23,
                        top: 35,
                        right: 79,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Starbucks",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 59,
                              bottom: 1,
                            ),
                            child: Text(
                              "Pet Café",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 22,
                        top: 23,
                        right: 93,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "Theme",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "Bakery",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaMedium22.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 22,
                        top: 20,
                        right: 38,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Music",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtKarlaMedium22.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            "Tim Hortons",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtKarlaMedium22.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 37,
                      ),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              22,
                            ),
                          );
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SearchItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
