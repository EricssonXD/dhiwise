import '../redirecting_page_screen/widgets/fiftyeightchipview_item_widget.dart';
import '../redirecting_page_screen/widgets/fiftynine_item_widget.dart';
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
                      Divider(color: appTheme.gray20002),
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
                              style: CustomTextStyles.titleSmallBluegray600)),
                      SizedBox(height: 27.v),
                      _buildFiftyEightChipView(context),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Do you need ",
                              style: CustomTextStyles.titleSmallBluegray600)),
                      SizedBox(height: 27.v),
                      _buildFiftyNine(context),
                      Spacer(),
                      Divider(color: appTheme.gray20002),
                      SizedBox(height: 17.v),
                      _buildNextButton(context),
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
  Widget _buildFiftyEightChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Wrap(
            runSpacing: 5.v,
            spacing: 5.h,
            children: List<Widget>.generate(
                2, (index) => FiftyeightchipviewItemWidget())));
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Wrap(
            runSpacing: 5.v,
            spacing: 5.h,
            children:
                List<Widget>.generate(2, (index) => FiftynineItemWidget())));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Next",
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumOnSecondaryContainer,
        onPressed: () {
          onTapNextButton(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the splashScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }
}
