import 'package:flutter/material.dart';
import 'package:good_trip/presentation/splash_screen/splash_screen.dart';
import 'package:good_trip/presentation/redirecting_page_screen/redirecting_page_screen.dart';
import 'package:good_trip/presentation/home_page_shell_screen/home_page_shell_screen.dart';
import 'package:good_trip/presentation/journey_page_screen/journey_page_screen.dart';
import 'package:good_trip/presentation/luggage_page_screen/luggage_page_screen.dart';
import 'package:good_trip/presentation/luggage_scan_screen/luggage_scan_screen.dart';
import 'package:good_trip/presentation/luggage_info_screen/luggage_info_screen.dart';
import 'package:good_trip/presentation/tickets_page_screen/tickets_page_screen.dart';
import 'package:good_trip/presentation/tickets_info_screen/tickets_info_screen.dart';
import 'package:good_trip/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:good_trip/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String redirectingPageScreen = '/redirecting_page_screen';

  static const String homePage = '/home_page';

  static const String homePageShellScreen = '/home_page_shell_screen';

  static const String journeyPageScreen = '/journey_page_screen';

  static const String luggagePageScreen = '/luggage_page_screen';

  static const String luggageScanScreen = '/luggage_scan_screen';

  static const String luggageInfoScreen = '/luggage_info_screen';

  static const String ticketsPageScreen = '/tickets_page_screen';

  static const String ticketsInfoScreen = '/tickets_info_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    redirectingPageScreen: (context) => RedirectingPageScreen(),
    homePageShellScreen: (context) => HomePageShellScreen(),
    journeyPageScreen: (context) => JourneyPageScreen(),
    luggagePageScreen: (context) => LuggagePageScreen(),
    luggageScanScreen: (context) => LuggageScanScreen(),
    luggageInfoScreen: (context) => LuggageInfoScreen(),
    ticketsPageScreen: (context) => TicketsPageScreen(),
    ticketsInfoScreen: (context) => TicketsInfoScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
