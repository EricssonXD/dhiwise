import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_title.dart';
import 'package:good_trip/widgets/app_bar/appbar_trailing_image.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePageShellPage extends StatelessWidget {
  const HomePageShellPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160.h,
                margin: EdgeInsets.only(left: 15.h),
                child: Text(
                  "Travel the World\nExplore your Inner Self",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 102.h,
                child: Divider(
                  color: appTheme.black900.withOpacity(0.5),
                  indent: 15.h,
                ),
              ),
              SizedBox(height: 37.v),
              _buildComingFlight(context),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "In Coming Trip",
                  style: CustomTextStyles.titleLargeBold,
                ),
              ),
              SizedBox(height: 18.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage18168x231,
                height: 168.v,
                width: 231.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 59.h),
                child: Text(
                  "Kwun Chung Bus",
                  style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 63.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocationOnprimarycontainer,
                      height: 17.v,
                      width: 13.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Zhuhai -> Hong Kong",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 63.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup26,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "08:00 - 09:30 HKT",
                        style: CustomTextStyles.bodyMediumBlack90014_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Explore",
        margin: EdgeInsets.only(left: 36.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMenu,
          margin: EdgeInsets.fromLTRB(23.h, 12.v, 23.h, 27.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildComingFlight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "In Coming Flight",
            style: CustomTextStyles.titleLargeBold,
          ),
          SizedBox(height: 34.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 14.v),
                child: Text(
                  "08:00 HKT",
                  style: CustomTextStyles.bodyMediumBlack90014_1,
                ),
              ),
              Container(
                height: 27.v,
                width: 68.h,
                margin: EdgeInsets.only(top: 4.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimary,
                      height: 16.v,
                      width: 68.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "CX 827",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 14.v),
                child: Text(
                  "15:30 HKT",
                  style: CustomTextStyles.bodyMediumBlack90014_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 20.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hong Kong",
                    style: theme.textTheme.bodySmall,
                  ),
                  Text(
                    "Thailand",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
