import '../redirecting_page_screen/widgets/yes2_item_widget.dart';
import '../redirecting_page_screen/widgets/yes_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_title_button.dart';
import 'package:good_trip/widgets/app_bar/appbar_title_image.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class RedirectingPageScreen extends StatelessWidget {
  const RedirectingPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                decoration: AppDecoration.fillGray,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(),
                      SizedBox(height: 31.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage24,
                          height: 262.v,
                          width: 352.h,
                          alignment: Alignment.center),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                              "Are you a customer from Greater Bay Area?",
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 27.v),
                      _buildYes(context),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Do you need ",
                              style: theme.textTheme.titleSmall)),
                      SizedBox(height: 27.v),
                      _buildYes1(context),
                      Spacer(),
                      Divider(),
                      SizedBox(height: 17.v),
                      CustomElevatedButton(
                          text: "Next",
                          margin: EdgeInsets.symmetric(horizontal: 17.h),
                          onPressed: () {
                            onTapNext(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 31.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 34.v,
        centerTitle: true,
        title: SizedBox(
            height: 34.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarTitleImage(imagePath: ImageConstant.img8134x390),
              AppbarTitleButton(
                  margin:
                      EdgeInsets.only(left: 107.h, right: 107.h, bottom: 5.v))
            ])));
  }

  /// Section Widget
  Widget _buildYes(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Wrap(
            runSpacing: 22.v,
            spacing: 22.h,
            children: List<Widget>.generate(2, (index) => YesItemWidget())));
  }

  /// Section Widget
  Widget _buildYes1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Wrap(
            runSpacing: 22.v,
            spacing: 22.h,
            children: List<Widget>.generate(2, (index) => Yes2ItemWidget())));
  }

  onTapNext(BuildContext context) {
    // TODO: implement Actions
  }
}
