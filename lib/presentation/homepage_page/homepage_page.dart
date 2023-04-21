import '../homepage_page/widgets/sectionlisttrending_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatelessWidget {
  List sectionlisttrendingItemList = [
    {'id': 1, 'groupBy': "Trending"},
    {'id': 2, 'groupBy': "Trending"},
    {'id': 3, 'groupBy': "Trending"},
    {'id': 4, 'groupBy': "Trending"},
    {'id': 5, 'groupBy': "Less wait time"},
    {'id': 6, 'groupBy': "Less wait time"},
    {'id': 7, 'groupBy': "Less wait time"},
    {'id': 8, 'groupBy': "Less wait time"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      getPadding(left: 21, top: 65, right: 19),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(41),
                                                width: getHorizontalSize(163),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      16),
                                                              width:
                                                                  getHorizontalSize(
                                                                      163),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .orange300))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "CaféMeet",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtKarlaBold35))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(top: 45),
                                            child: Text("Cafés around you",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtKarlaMedium22)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: getVerticalSize(182),
                                            width: getHorizontalSize(350),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16)),
                                            margin: getMargin(top: 20),
                                            onTap: () {
                                              onTapImgImageOne(context);
                                            }),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("Search by place",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtKarlaMedium22)),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapColumnuser(
                                                            context);
                                                      },
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 18,
                                                              right: 30,
                                                              bottom: 18),
                                                          decoration: AppDecoration
                                                              .shadow
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder16),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUserOrange300,
                                                                    height:
                                                                        getVerticalSize(
                                                                            40),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            41),
                                                                    margin: getMargin(
                                                                        top:
                                                                            2)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                6),
                                                                    child: Text(
                                                                        "Retail",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtKarlaMedium18))
                                                              ]))),
                                                  Container(
                                                      padding: getPadding(
                                                          left: 25,
                                                          top: 16,
                                                          right: 25,
                                                          bottom: 25),
                                                      decoration: AppDecoration
                                                          .shadow
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector,
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        33),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            4)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "Library",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKarlaMedium18))
                                                          ])),
                                                  Container(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 18,
                                                          right: 20,
                                                          bottom: 18),
                                                      decoration: AppDecoration
                                                          .shadow
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocation,
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        41),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            2)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "Themed",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKarlaMedium18))
                                                          ]))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: GroupedListView<dynamic,
                                                    String>(
                                                shrinkWrap: true,
                                                useStickyGroupSeparators: true,
                                                stickyHeaderBackgroundColor:
                                                    Colors.transparent,
                                                elements:
                                                    sectionlisttrendingItemList,
                                                groupBy: (element) =>
                                                    element['groupBy'],
                                                groupSeparatorBuilder:
                                                    (String value) {
                                                  return Padding(
                                                      padding: getPadding(
                                                          right: 261),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtKarlaMedium22
                                                                    .copyWith(
                                                                        color: ColorConstant
                                                                            .gray900))
                                                          ]));
                                                },
                                                itemBuilder: (context, model) {
                                                  return SectionlisttrendingItemWidget();
                                                }))
                                      ]))))
                    ]))));
  }

  onTapImgImageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsByLocationScreen);
  }

  onTapColumnuser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsByLocationFilteredScreen);
  }
}
