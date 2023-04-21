import 'package:flutter/material.dart';
import 'package:cafemeet/presentation/profile_screen/profile_screen.dart';
import 'package:cafemeet/presentation/homepage_one_container_screen/homepage_one_container_screen.dart';
import 'package:cafemeet/presentation/about_restaurant_after_booking_screen/about_restaurant_after_booking_screen.dart';
import 'package:cafemeet/presentation/search_results_screen/search_results_screen.dart';
import 'package:cafemeet/presentation/review_screen/review_screen.dart';
import 'package:cafemeet/presentation/add_review_screen/add_review_screen.dart';
import 'package:cafemeet/presentation/review_edit_screen/review_edit_screen.dart';
import 'package:cafemeet/presentation/about_restaurant_screen/about_restaurant_screen.dart';
import 'package:cafemeet/presentation/restaurants_by_location_screen/restaurants_by_location_screen.dart';
import 'package:cafemeet/presentation/restaurants_by_location_filtered_screen/restaurants_by_location_filtered_screen.dart';
import 'package:cafemeet/presentation/book_a_table_screen/book_a_table_screen.dart';
import 'package:cafemeet/presentation/book_a_table_one_screen/book_a_table_one_screen.dart';
import 'package:cafemeet/presentation/homepage_screen/homepage_screen.dart';
import 'package:cafemeet/presentation/booked_one_screen/booked_one_screen.dart';
import 'package:cafemeet/presentation/search_one_screen/search_one_screen.dart';
import 'package:cafemeet/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String profileScreen = '/profile_screen';

  static const String homepageOnePage = '/homepage_one_page';

  static const String homepageOneContainerScreen =
      '/homepage_container_screen';

  static const String homepagePage = '/homepage_page';

  static const String profileOnePage = '/profile_one_page';

  static const String bookedPage = '/booked_page';

  static const String aboutRestaurantAfterBookingScreen =
      '/about_restaurant_after_booking_screen';

  static const String searchPage = '/search_page';

  static const String searchResultsScreen = '/search_results_screen';

  static const String reviewScreen = '/review_screen';

  static const String addReviewScreen = '/add_review_screen';

  static const String reviewEditScreen = '/review_edit_screen';

  static const String aboutRestaurantScreen = '/about_restaurant_screen';

  static const String restaurantsByLocationScreen =
      '/restaurants_by_location_screen';

  static const String restaurantsByLocationFilteredScreen =
      '/restaurants_by_location_filtered_screen';

  static const String bookATableScreen = '/book_a_table_screen';

  static const String bookATableOneScreen = '/book_a_table_one_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String bookedOneScreen = '/booked_one_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    profileScreen: (context) => ProfileScreen(),
    homepageOneContainerScreen: (context) => HomepageOneContainerScreen(),
    aboutRestaurantAfterBookingScreen: (context) =>
        AboutRestaurantAfterBookingScreen(),
    searchResultsScreen: (context) => SearchResultsScreen(),
    reviewScreen: (context) => ReviewScreen(),
    addReviewScreen: (context) => AddReviewScreen(),
    reviewEditScreen: (context) => ReviewEditScreen(),
    aboutRestaurantScreen: (context) => AboutRestaurantScreen(),
    restaurantsByLocationScreen: (context) => RestaurantsByLocationScreen(),
    restaurantsByLocationFilteredScreen: (context) =>
        RestaurantsByLocationFilteredScreen(),
    bookATableScreen: (context) => BookATableScreen(),
    bookATableOneScreen: (context) => BookATableOneScreen(),
    homepageScreen: (context) => HomepageScreen(),
    bookedOneScreen: (context) => BookedOneScreen(),
    searchOneScreen: (context) => SearchOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
