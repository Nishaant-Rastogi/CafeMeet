import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark,
      title: "Booked",
      type: BottomBarEnum.Booked,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserGray600,
      title: "Profile",
      type: BottomBarEnum.Profile,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      title: "Search",
      type: BottomBarEnum.Search,
    )
  ];

  List<BottomMenuModel> bottomMenuActiveList = [
    BottomMenuModel(
      icon: ImageConstant.imgStar,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMailOrange300,
      title: "Booked",
      type: BottomBarEnum.Booked,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "Profile",
      type: BottomBarEnum.Profile,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchOrange300,
      title: "Search",
      type: BottomBarEnum.Search,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray5004c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getVerticalSize(
                    29,
                  ),
                  width: getHorizontalSize(
                    23,
                  ),
                  color: ColorConstant.gray600,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaRegular16.copyWith(
                      color: ColorConstant.gray600,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuActiveList[index].icon,
                  height: getVerticalSize(
                    29,
                  ),
                  width: getHorizontalSize(
                    28,
                  ),
                  color: ColorConstant.orange300,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    bottomMenuActiveList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaBold16.copyWith(
                      color: ColorConstant.gray900,
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
          onChanged!(bottomMenuActiveList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Booked,
  Profile,
  Search,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

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
