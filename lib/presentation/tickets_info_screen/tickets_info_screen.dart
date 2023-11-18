import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/custom_elevated_button.dart';

class TicketsInfoScreen extends StatelessWidget {
  const TicketsInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage18201x390,
                      height: 201.v,
                      width: 390.h),
                  _buildHktColumn(context),
                  SizedBox(height: 15.v),
                  _buildLocationColumn(context),
                  SizedBox(height: 16.v),
                  SizedBox(
                      height: 196.v,
                      width: 201.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage21,
                            height: 184.v,
                            width: 201.h,
                            alignment: Alignment.topCenter),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Ticket QR Code",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer))
                      ])),
                  SizedBox(height: 22.v),
                  _buildBackStack(context)
                ]))));
  }

  /// Section Widget
  Widget _buildHktColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
        decoration: AppDecoration.fillGray,
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 23.v),
            decoration: AppDecoration.outlineBlack,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, bottom: 3.v),
                      child: Column(children: [
                        Text("08:00 HKT",
                            style: CustomTextStyles.bodyMediumBlack90014_1),
                        SizedBox(height: 14.v),
                        Text("Zhuhai",
                            style:
                                CustomTextStyles.bodySmallOnSecondaryContainer)
                      ])),
                  Column(children: [
                    SizedBox(
                        width: 161.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVectorPrimary,
                                  height: 16.v,
                                  width: 68.h,
                                  margin: EdgeInsets.only(top: 16.v)),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 15.v),
                                  child: Text("09:30 HKT",
                                      style: CustomTextStyles
                                          .bodyMediumBlack90014_1))
                            ])),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 13.h),
                            child: Text("Hong Kong",
                                style: theme.textTheme.bodySmall)))
                  ])
                ])));
  }

  /// Section Widget
  Widget _buildLocationColumn(BuildContext context) {
    return Container(
        width: 389.h,
        padding: EdgeInsets.symmetric(horizontal: 89.h, vertical: 17.v),
        decoration: AppDecoration.fillGray,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 35.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath:
                            ImageConstant.imgLocationOnprimarycontainer13x10,
                        height: 18.v,
                        width: 13.h,
                        margin: EdgeInsets.only(bottom: 4.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, top: 3.v),
                        child: Text("Zhuhai -> Hong Kong",
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 6.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup36,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text("18 - 11 - 2023",
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup39,
                            height: 13.v,
                            width: 14.h,
                            margin: EdgeInsets.only(top: 1.v, bottom: 4.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("230 HKD",
                                style: theme.textTheme.bodyMedium))
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildBackStack(BuildContext context) {
    return SizedBox(
        height: 104.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                  decoration: AppDecoration.fillGray,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        text: "Back",
                        onPressed: () {
                          onTapBack(context);
                        })
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]));
  }

  /// Navigates to the ticketsPageScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ticketsPageScreen);
  }
}
