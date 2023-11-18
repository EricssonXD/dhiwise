import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_leading_image.dart';
import 'package:good_trip/widgets/app_bar/appbar_title.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';

class JourneyPageScreen extends StatelessWidget {
  const JourneyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 56.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage19,
                      height: 273.v,
                      width: 313.h),
                  SizedBox(height: 34.v),
                  Container(
                      margin: EdgeInsets.only(right: 3.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
                      decoration: AppDecoration.outlinePrimary,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 104.v,
                                width: 91.h,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage20,
                                          height: 91.adaptSize,
                                          width: 91.adaptSize,
                                          radius: BorderRadius.circular(45.h),
                                          alignment: Alignment.topCenter),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              width: 90.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 19.h,
                                                  vertical: 2.v),
                                              decoration:
                                                  AppDecoration.outlinePrimary1,
                                              child: Text("H3E75",
                                                  style: CustomTextStyles
                                                      .bodyLarge16)))
                                    ])),
                            Container(
                                width: 143.h,
                                margin: EdgeInsets.only(left: 46.h, top: 19.v),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Estimated Arrival Time\n",
                                          style: theme.textTheme.bodyLarge),
                                      TextSpan(
                                          text: "\n",
                                          style: theme.textTheme.titleLarge),
                                      TextSpan(
                                          text: "~ 15:00",
                                          style: theme.textTheme.bodyLarge)
                                    ]),
                                    textAlign: TextAlign.center))
                          ])),
                  SizedBox(height: 49.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 80.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTrash,
                                height: 16.adaptSize,
                                width: 16.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text("11 - 7 - 2023",
                                    style:
                                        CustomTextStyles.bodyMediumBlack90001))
                          ]))),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 65.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLocationGray50001,
                                    height: 17.v,
                                    width: 12.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text("Macau -> Hong Kong",
                                        style: CustomTextStyles
                                            .bodyMediumBlack90001))
                              ]))),
                  SizedBox(height: 11.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgNavLuggage,
                        height: 13.v,
                        width: 16.h,
                        margin: EdgeInsets.only(bottom: 3.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text("20kg Luggage x 1",
                            style: theme.textTheme.bodyMedium))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 24.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 25.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Journey"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
