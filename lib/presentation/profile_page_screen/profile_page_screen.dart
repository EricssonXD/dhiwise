import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 28.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 16.v,
                      width: 9.h,
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 26.v),
                  Text("Profile", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 64.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage395x95,
                      height: 95.adaptSize,
                      width: 95.adaptSize,
                      radius: BorderRadius.circular(47.h)),
                  SizedBox(height: 60.v),
                  SizedBox(
                      width: 198.h,
                      child: Text(
                          "(Name)\n\n(Destination)\n\n(Number of collected NFT)",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildLogoutButton(context)));
  }

  /// Section Widget
  Widget _buildLogoutButton(BuildContext context) {
    return CustomElevatedButton(
        width: 228.h,
        text: "Logout",
        margin: EdgeInsets.only(left: 82.h, right: 80.h, bottom: 43.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
        buttonTextStyle:
            CustomTextStyles.titleLargeKodchasanOnSecondaryContainer);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
