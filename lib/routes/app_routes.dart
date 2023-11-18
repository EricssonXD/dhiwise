import 'package:flutter/material.dart';
import 'package:good_trip/presentation/home_page_shell_container_screen/home_page_shell_container_screen.dart';
import 'package:good_trip/presentation/redirecting_page_screen/redirecting_page_screen.dart';
import 'package:good_trip/presentation/journey_page_screen/journey_page_screen.dart';
import 'package:good_trip/presentation/luggage_scan_screen/luggage_scan_screen.dart';
import 'package:good_trip/presentation/luggage_info_screen/luggage_info_screen.dart';
import 'package:good_trip/presentation/luggage_page_screen/luggage_page_screen.dart';
import 'package:good_trip/presentation/luggage_page_selected_screen/luggage_page_selected_screen.dart';
import 'package:good_trip/presentation/tickets_page_screen/tickets_page_screen.dart';
import 'package:good_trip/presentation/tickets_info_screen/tickets_info_screen.dart';
import 'package:good_trip/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageShellPage = '/home_page_shell_page';

  static const String homePageShellContainerScreen =
      '/home_page_shell_container_screen';

  static const String redirectingPageScreen = '/redirecting_page_screen';

  static const String journeyPageScreen = '/journey_page_screen';

  static const String luggageScanScreen = '/luggage_scan_screen';

  static const String luggageInfoScreen = '/luggage_info_screen';

  static const String luggagePageScreen = '/luggage_page_screen';

  static const String luggagePageSelectedScreen =
      '/luggage_page_selected_screen';

  static const String ticketsPageScreen = '/tickets_page_screen';

  static const String ticketsInfoScreen = '/tickets_info_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homePageShellContainerScreen: (context) => HomePageShellContainerScreen(),
    redirectingPageScreen: (context) => RedirectingPageScreen(),
    journeyPageScreen: (context) => JourneyPageScreen(),
    luggageScanScreen: (context) => LuggageScanScreen(),
    luggageInfoScreen: (context) => LuggageInfoScreen(),
    luggagePageScreen: (context) => LuggagePageScreen(),
    luggagePageSelectedScreen: (context) => LuggagePageSelectedScreen(),
    ticketsPageScreen: (context) => TicketsPageScreen(),
    ticketsInfoScreen: (context) => TicketsInfoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
