import '../search_one_screen/widgets/search_one_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:cafemeet/presentation/profile_one_page/profile_one_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchOneScreen extends StatelessWidget {
  TextEditingController groupThirtyController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 21,
            right: 21,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
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
                    top: 65,
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
                controller: groupThirtyController,
                hintText: "Search",
                margin: getMargin(
                  top: 43,
                ),
                variant: TextFormFieldVariant.White,
                textInputAction: TextInputAction.done,
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 22,
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
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return SearchOneItemWidget();
                  },
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgUser,
                height: getSize(
                  29,
                ),
                width: getSize(
                  29,
                ),
                margin: getMargin(
                  right: 116,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                  right: 105,
                ),
                child: Text(
                  "Profile",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtKarlaBold16,
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
        return AppRoutes.homepageOnePage;
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
      case AppRoutes.homepageOnePage:
        return HomepageOnePage();
      case AppRoutes.bookedPage:
        return BookedPage();
      case AppRoutes.profileOnePage:
        return ProfileOnePage();
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }
}
