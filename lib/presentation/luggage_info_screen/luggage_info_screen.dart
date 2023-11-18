import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_subtitle.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';

class LuggageInfoScreen extends StatelessWidget {
  const LuggageInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                margin: EdgeInsets.symmetric(horizontal: 40.h, vertical: 62.v),
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
                decoration: AppDecoration.outlineBlack,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
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
                                            horizontal: 19.h, vertical: 2.v),
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        child: Text("H3E75",
                                            style: theme.textTheme.bodyLarge)))
                              ])),
                      Container(
                          width: 143.h,
                          margin: EdgeInsets.only(
                              left: 46.h, top: 19.v, right: 4.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Estimated Arrival Time\n",
                                    style: CustomTextStyles.bodyLarge18),
                                TextSpan(
                                    text: "\n",
                                    style: CustomTextStyles.titleLargeBlack900),
                                TextSpan(
                                    text: "~ 15:00",
                                    style: CustomTextStyles.bodyLarge18)
                              ]),
                              textAlign: TextAlign.center))
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
        title: AppbarSubtitle(text: "Luggage"));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
