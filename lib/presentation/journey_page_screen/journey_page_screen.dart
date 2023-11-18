import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class JourneyPageScreen extends StatelessWidget {
  const JourneyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 804.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 1.h),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text("Journey",
                                                      style: theme.textTheme
                                                          .titleLarge),
                                                  SizedBox(height: 427.v),
                                                  _buildJourneyDetails(context),
                                                  SizedBox(height: 14.v),
                                                  Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 40.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 13.h,
                                                              vertical: 10.v),
                                                      decoration: AppDecoration
                                                          .outlineBlack,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                                height: 104.v,
                                                                width: 91.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom: 2
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgImage20,
                                                                          height: 91
                                                                              .adaptSize,
                                                                          width: 91
                                                                              .adaptSize,
                                                                          radius: BorderRadius.circular(45
                                                                              .h),
                                                                          alignment:
                                                                              Alignment.topCenter),
                                                                      CustomElevatedButton(
                                                                          height: 27
                                                                              .v,
                                                                          width: 90
                                                                              .h,
                                                                          text:
                                                                              "H3E75",
                                                                          buttonStyle: CustomButtonStyles
                                                                              .outlineBlack,
                                                                          buttonTextStyle: CustomTextStyles
                                                                              .bodyLargeOnPrimary,
                                                                          alignment:
                                                                              Alignment.bottomCenter)
                                                                    ])),
                                                            Container(
                                                                width: 164.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 26
                                                                            .h,
                                                                        top: 22
                                                                            .v,
                                                                        bottom: 28
                                                                            .v),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "Estimated Arrival Time\n",
                                                                              style: CustomTextStyles.titleSmallOnPrimaryContainer),
                                                                          TextSpan(
                                                                              text: "\n",
                                                                              style: CustomTextStyles.bodyMediumBlack900_2),
                                                                          TextSpan(
                                                                              text: "14:55 ~ 15:00 HKT",
                                                                              style: CustomTextStyles.bodyMediumBlack900)
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center))
                                                          ])),
                                                  SizedBox(height: 30.v),
                                                  CustomElevatedButton(
                                                      text: "Back",
                                                      margin: EdgeInsets.only(
                                                          left: 17.h,
                                                          right: 16.h),
                                                      onPressed: () {
                                                        onTapBack(context);
                                                      }),
                                                  SizedBox(height: 25.v)
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 35.v),
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider()))),
                                    _buildHktDetails(context),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage19,
                                        height: 273.v,
                                        width: 313.h,
                                        alignment: Alignment.topCenter,
                                        margin: EdgeInsets.only(top: 50.v)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 96.v),
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider())))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildJourneyDetails(BuildContext context) {
    return Container(
        width: 389.h,
        padding: EdgeInsets.symmetric(horizontal: 100.h, vertical: 19.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup36,
                    height: 21.adaptSize,
                    width: 21.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 18.h, top: 2.v),
                    child: Text("11 - 7 - 2023",
                        style: CustomTextStyles.bodyMediumLight))
              ]),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup18,
                        height: 17.v,
                        width: 21.h),
                    Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Text("20kg Luggage x 1",
                            style: CustomTextStyles.bodyMediumBlack900Light))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildHktDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 66.h, vertical: 16.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 81.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "08:00 HKT\n\n",
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "Zhuhai",
                            style: CustomTextStyles.bodyMediumBlack90014)
                      ]),
                      textAlign: TextAlign.center)),
              CustomImageView(
                  imagePath: ImageConstant.imgVectorPrimary,
                  height: 16.v,
                  width: 46.h,
                  margin: EdgeInsets.only(left: 24.h, top: 22.v, bottom: 21.v)),
              Container(
                  width: 82.h,
                  margin: EdgeInsets.only(left: 21.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "09:30 HKT\n\n",
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "Hong Kong",
                            style: CustomTextStyles.bodyMediumBlack90014)
                      ]),
                      textAlign: TextAlign.center))
            ])));
  }

  /// Navigates to the homePageShellContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageShellContainerScreen);
  }
}
