import '../profile1_page/widgets/profile_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Profile1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: getPadding(
                    left: 21,
                    right: 21,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 65,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      41,
                                    ),
                                    width: getHorizontalSize(
                                      163,
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
                                Padding(
                                  padding: getPadding(
                                    top: 52,
                                  ),
                                  child: Text(
                                    "Hey Divyam",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium22,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "+91 12345 67890",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium14,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 37,
                                  ),
                                  child: Text(
                                    "Reviews",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKarlaMedium22,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgUserGray900,
                              height: getSize(
                                60,
                              ),
                              width: getSize(
                                60,
                              ),
                              margin: getMargin(
                                left: 34,
                                top: 84,
                                bottom: 57,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 24,
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
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return ProfileItemWidget();
                          },
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgVector2,
                        height: getVerticalSize(
                          8,
                        ),
                        width: getHorizontalSize(
                          18,
                        ),
                        margin: getMargin(
                          right: 121,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
