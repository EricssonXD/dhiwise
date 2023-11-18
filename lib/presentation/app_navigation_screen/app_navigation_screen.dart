import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Page Shell - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homePageShellContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Redirecting Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.redirectingPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Journey Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.journeyPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Luggage Scan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.luggageScanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Luggage Info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.luggageInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Luggage Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.luggagePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Luggage Page Selected",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.luggagePageSelectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tickets Info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketsInfoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
