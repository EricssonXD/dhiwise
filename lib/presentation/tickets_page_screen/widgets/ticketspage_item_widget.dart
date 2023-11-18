import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';

// ignore: must_be_immutable
class TicketspageItemWidget extends StatelessWidget {
  TicketspageItemWidget({
    Key? key,
    this.onTapZhuhaiHongKong,
  }) : super(
          key: key,
        );

  VoidCallback? onTapZhuhaiHongKong;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapZhuhaiHongKong!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage18168x298,
              height: 168.v,
              width: 298.h,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLocationOnprimarycontainer13x10,
                    height: 13.v,
                    width: 10.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Zhuhai -> Hong Kong",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup36,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "18 - 11 - 2023",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "08:00 - 09:30 HKT",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
