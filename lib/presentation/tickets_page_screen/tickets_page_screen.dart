import '../tickets_page_screen/widgets/ticketspage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';
import 'package:good_trip/widgets/app_bar/appbar_leading_image.dart';
import 'package:good_trip/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:good_trip/widgets/app_bar/custom_app_bar.dart';

class TicketsPageScreen extends StatelessWidget {
  const TicketsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 14.v),
                    decoration: AppDecoration.fillGray,
                    child: Column(children: [
                      _buildAppBar(context),
                      SizedBox(height: 23.v),
                      _buildTicketsPage(context),
                      SizedBox(height: 23.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 25.v,
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 14.h, top: 6.v, bottom: 4.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Tickets"));
  }

  /// Section Widget
  Widget _buildTicketsPage(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15.v);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TicketspageItemWidget(onTapZhuhaiHongKong: () {
                    onTapZhuhaiHongKong(context);
                  });
                })));
  }

  /// Navigates to the ticketsInfoScreen when the action is triggered.
  onTapZhuhaiHongKong(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ticketsInfoScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
