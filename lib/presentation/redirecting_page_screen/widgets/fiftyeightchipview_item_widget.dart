import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';

// ignore: must_be_immutable
class FiftyeightchipviewItemWidget extends StatelessWidget {
  const FiftyeightchipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Yes",
          style: TextStyle(
            color: theme.colorScheme.primary.withOpacity(1),
            fontSize: 17.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {},
      ),
    );
  }
}
