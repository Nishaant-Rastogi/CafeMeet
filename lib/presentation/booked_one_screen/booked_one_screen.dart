import '../booked_one_screen/widgets/booked_one_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:cafemeet/presentation/profile_one_page/profile_one_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookedOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 21,
            top: 65,
            right: 21,
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
              CustomButton(
                height: getVerticalSize(
                  51,
                ),
                width: getHorizontalSize(
                  107,
                ),
                text: "Sort",
                margin: getMargin(
                  top: 43,
                  right: 1,
                ),
                prefixWidget: Container(
                  margin: getMargin(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMenu,
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                ),
                child: Text(
                  "Booked reservations",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtKarlaMedium22,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                  right: 1,
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
                    return BookedOneItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
