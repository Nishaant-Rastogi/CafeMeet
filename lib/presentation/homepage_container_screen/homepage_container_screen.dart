import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/about_restaurant_after_booking_screen/about_restaurant_after_booking_screen.dart';
import 'package:cafemeet/presentation/about_restaurant_screen/about_restaurant_screen.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/presentation/homepage_page/homepage_page.dart';
import 'package:cafemeet/presentation/profile1_page/profile1_page.dart';
import 'package:cafemeet/presentation/restaurants_by_location_filtered_screen/restaurants_by_location_filtered_screen.dart';
import 'package:cafemeet/presentation/restaurants_by_location_screen/restaurants_by_location_screen.dart';
import 'package:cafemeet/presentation/search_page/search_page.dart';
import 'package:cafemeet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomepageContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homepagePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
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
        return AppRoutes.profileOnePage;
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
      case AppRoutes.profileOnePage:
        return Profile1Page();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.aboutRestaurantScreen:
        return AboutRestaurantScreen();
      case AppRoutes.aboutRestaurantAfterBookingScreen:
        return AboutRestaurantAfterBookingScreen();
      case AppRoutes.restaurantsByLocationFilteredScreen:
        return RestaurantsByLocationFilteredScreen();
      case AppRoutes.restaurantsByLocationScreen:
        return RestaurantsByLocationScreen();
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
