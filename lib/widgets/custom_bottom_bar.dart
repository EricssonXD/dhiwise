import 'package:flutter/material.dart';
import 'package:good_trip/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavJourney,
      activeIcon: ImageConstant.imgNavJourney,
      title: "Journey",
      type: BottomBarEnum.Journey,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavLuggage,
      activeIcon: ImageConstant.imgNavLuggage,
      title: "Luggage",
      type: BottomBarEnum.Luggage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTickets,
      activeIcon: ImageConstant.imgNavTickets,
      title: "Tickets",
      type: BottomBarEnum.Tickets,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        color: appTheme.gray30033,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 18.v,
                  width: 22.h,
                  color: appTheme.black900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 23.v,
                  width: 15.h,
                  color: appTheme.black900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Journey,
  Luggage,
  Tickets,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
