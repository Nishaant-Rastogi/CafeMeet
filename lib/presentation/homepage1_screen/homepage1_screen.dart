import '../homepage1_screen/widgets/homepage_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_page/homepage_page.dart';
import 'package:cafemeet/presentation/profile1_page/profile1_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Homepage1Screen extends StatelessWidget {
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
                  137,
                ),
                text: "Add café",
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
                    svgPath: ImageConstant.imgPlus,
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Text(
                  "Your cafés",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtKarlaMedium22,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
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
                    return HomepageItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Booked:
        return AppRoutes.bookedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOnePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.bookedPage:
        return BookedPage();
      case AppRoutes.profileOnePage:
        return Profile1Page();
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }
}
