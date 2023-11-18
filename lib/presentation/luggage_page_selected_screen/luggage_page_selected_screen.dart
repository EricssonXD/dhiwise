import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class LuggagePageSelectedScreen extends StatelessWidget {
  const LuggagePageSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage22,
                      height: 480.v,
                      width: 312.h),
                  SizedBox(height: 5.v),
                  _buildBackStack(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 57.v,
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Luggage"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBackStack(BuildContext context) {
    return SizedBox(
        height: 263.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 34.v),
                  decoration: AppDecoration.fillGray,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 5.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Text("ID",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer_1),
                                SizedBox(height: 13.v),
                                Text("Status",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer_1),
                                SizedBox(height: 11.v),
                                Text("Weight",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer_1)
                              ]),
                              Padding(
                                  padding: EdgeInsets.only(left: 47.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("12uxp590",
                                            style: theme.textTheme.bodyMedium),
                                        SizedBox(height: 13.v),
                                        Text("Shipping to Airport",
                                            style: theme.textTheme.bodyMedium),
                                        SizedBox(height: 12.v),
                                        Text("19.5 KG",
                                            style: theme.textTheme.bodyMedium)
                                      ]))
                            ]),
                        SizedBox(height: 52.v),
                        CustomElevatedButton(
                            text: "Back",
                            onPressed: () {
                              onTapBack(context);
                            })
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 103.v),
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]));
  }

  /// Navigates to the homePageShellContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageShellContainerScreen);
  }
}
