import '../search_results_screen/widgets/search_results_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:cafemeet/presentation/profile_one_page/profile_one_page.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:cafemeet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  TextEditingController groupThreeController = TextEditingController();

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
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
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: groupThreeController,
                hintText: "Search",
                margin: getMargin(
                  top: 43,
                ),
                variant: TextFormFieldVariant.OutlineGray900,
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
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SearchResultsItemWidget();
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
