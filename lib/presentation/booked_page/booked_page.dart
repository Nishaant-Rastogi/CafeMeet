import '../booked_page/widgets/sectionlistreservations_item_widget.dart';
import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

// ignore_for_file: must_be_immutable
class BookedPage extends StatelessWidget {
  List sectionlistreservationsItemList = [
    {'id': 1, 'groupBy': "Reservations"},
    {'id': 2, 'groupBy': "Upcoming"},
    {'id': 3, 'groupBy': "Upcoming"}
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
              Container(
                padding: getPadding(
                  left: 21,
                  top: 22,
                  right: 21,
                  bottom: 22,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        41,
                      ),
                      width: getHorizontalSize(
                        163,
                      ),
                      margin: getMargin(
                        top: 43,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                163,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.orange300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CaféMeet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKarlaBold35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 43,
                      ),
                      child: GroupedListView<dynamic, String>(
                        shrinkWrap: true,
                        useStickyGroupSeparators: true,
                        stickyHeaderBackgroundColor: Colors.transparent,
                        elements: sectionlistreservationsItemList,
                        groupBy: (element) => element['groupBy'],
                        groupSeparatorBuilder: (String value) {
                          return Padding(
                            padding: getPadding(
                              right: 217,
                              top:20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtKarlaMedium22.copyWith(
                                    color: ColorConstant.gray900,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemBuilder: (context, model) {
                          return SectionlistreservationsItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
