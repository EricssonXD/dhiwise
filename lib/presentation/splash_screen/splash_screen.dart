import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onSecondaryContainer,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onSecondaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashScreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 44.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          SizedBox(
                              width: 217.h,
                              child: Text("Let’s create your own memory",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 40.v),
                          CustomElevatedButton(
                              width: 228.h,
                              text: "Get Started",
                              margin: EdgeInsets.only(left: 47.h),
                              onPressed: () {
                                onTapGetStarted(context);
                              })
                        ])))));
  }

  /// Navigates to the homePageShellScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageShellScreen);
  }
}
