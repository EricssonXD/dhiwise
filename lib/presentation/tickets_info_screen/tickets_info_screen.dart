import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/custom_outlined_button.dart';

class TicketsInfoScreen extends StatelessWidget {
  const TicketsInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                child: Column(children: [
                  _buildSix(context),
                  SizedBox(height: 33.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Column(children: [
                          Text("08:00 HKT", style: theme.textTheme.bodyMedium),
                          SizedBox(height: 14.v),
                          Text("Macau", style: theme.textTheme.bodySmall)
                        ])),
                    Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Column(children: [
                          SizedBox(
                              width: 160.h,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPrimary,
                                        height: 16.v,
                                        width: 68.h,
                                        margin: EdgeInsets.only(top: 16.v)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 15.v),
                                        child: Text("15:30 HKT",
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 12.h),
                                  child: Text("Hong Kong",
                                      style: theme.textTheme.bodySmall)))
                        ]))
                  ]),
                  SizedBox(height: 44.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 87.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTrash,
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("11 - 7 - 2023",
                                    style: CustomTextStyles
                                        .bodyMediumBlack9000115))
                          ]))),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 88.h),
                          child: Row(children: [
                            Container(
                                height: 18.v,
                                width: 13.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 3.adaptSize,
                                              width: 3.adaptSize,
                                              margin: EdgeInsets.only(top: 5.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray50001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 18.v,
                                          width: 13.h,
                                          alignment: Alignment.center)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("Macau -> Hong Kong",
                                    style: CustomTextStyles
                                        .bodyMediumBlack9000115))
                          ]))),
                  SizedBox(height: 24.v),
                  SizedBox(
                      height: 245.v,
                      width: 226.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Ticket QR Code",
                                style: CustomTextStyles
                                    .titleMediumPrimarySemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage21226x226,
                            height: 226.adaptSize,
                            width: 226.adaptSize,
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 41.v),
                  CustomOutlinedButton(
                      height: 62.v,
                      text: "Select Luggage",
                      margin: EdgeInsets.only(left: 57.h, right: 56.h),
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle: CustomTextStyles.bodyMedium15),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return SizedBox(
        height: 200.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage18200x390,
              height: 200.v,
              width: 390.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 16.v,
              width: 9.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15.h, top: 14.v),
              onTap: () {
                onTapImgArrowLeft(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
