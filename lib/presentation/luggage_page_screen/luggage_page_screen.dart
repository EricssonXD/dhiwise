import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_title.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';
import 'package:good_trip/widgets/custom_outlined_button.dart';

class LuggagePageScreen extends StatelessWidget {
  const LuggagePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 43.v),
                child: Column(children: [
                  CustomOutlinedButton(
                      height: 62.v,
                      text: "Add Luggage",
                      margin: EdgeInsets.only(left: 19.h, right: 18.h),
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle: CustomTextStyles.bodyMedium15,
                      onPressed: () {
                        onTapAddLuggage(context);
                      }),
                  SizedBox(height: 44.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage22,
                      height: 480.v,
                      width: 312.h),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 24.h,
        leading: Container(
            height: 16.v,
            width: 9.h,
            margin: EdgeInsets.only(left: 15.h, top: 17.v, bottom: 22.v),
            child: Stack(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 16.v,
                  width: 9.h,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              SizedBox(
                  height: 16.v,
                  width: 9.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 16.v,
                        width: 9.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 16.v,
                        width: 9.h,
                        alignment: Alignment.center)
                  ]))
            ])),
        centerTitle: true,
        title: AppbarTitle(text: "Languages"));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the luggageScanScreen when the action is triggered.
  onTapAddLuggage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.luggageScanScreen);
  }
}
