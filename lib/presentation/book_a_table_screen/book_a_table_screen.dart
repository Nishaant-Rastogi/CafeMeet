import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/book_a_table_one_screen/book_a_table_one_screen.dart';
import 'package:cafemeet/presentation/booked_page/booked_page.dart';
import 'package:cafemeet/widgets/app_bar/appbar_image.dart';
import 'package:cafemeet/widgets/app_bar/appbar_title.dart';
import 'package:cafemeet/widgets/app_bar/custom_app_bar.dart';
import 'package:cafemeet/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text_form_field.dart';

class BookATableScreen extends StatelessWidget {
  TextEditingController seatsController = TextEditingController();
  TextEditingController timeFromController = TextEditingController();
  TextEditingController timeToController = TextEditingController();
  TextEditingController seatingAreaController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();

  var seatingArea = 'Bar Seating';
  var seatingAreas = [
    'Bar Seating',
    'Outdoor Seating',
    'Banquet Seating',
    'Private Seating',
    'Official Meeting',
  ];

  var timing = "12:00 - 1:00pm";
  var timings = [
    "12:00 - 1:00pm",
    '1:00 - 2:00pm',
    '2:00 - 3:00pm',
    '3:00 - 4:00pm',
    '4:00 - 5:00pm',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(106),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getVerticalSize(19),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 21, top: 12, bottom: 9),
                    onTap: () => onTapArrowleft5(context)),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(41),
                    width: getHorizontalSize(163),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: getVerticalSize(16),
                              width: getHorizontalSize(163),
                              margin: getMargin(top: 24),
                              decoration: BoxDecoration(
                                  color: ColorConstant.orange300))),
                      AppbarTitle(
                          text: "CaféMeet",
                          margin: getMargin(left: 2, right: 3))
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 21, top: 48, right: 21, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgJaywennington194x350,
                                  height: getVerticalSize(194),
                                  width: getHorizontalSize(350),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16))),
                              Padding(
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Number of seats",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: seatsController,
                                  hintText: "Enter the number of the seats",
                                  margin: getMargin(top: 21),
                                  shape: TextFormFieldShape.RoundedBorder8,
                                  padding: TextFormFieldPadding.PaddingTop10,
                                  fontStyle:
                                  TextFormFieldFontStyle.KarlaMediumItalic14),
                              Padding(
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Time",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              Padding(
                                  padding: getPadding(left: 1, top: 22),
                                  child: Row(children: [
                                    DropdownButton(

                                      // Initial Value
                                      value: timing,

                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: timings.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          timing = newValue!;
                                        });
                                      },
                                    ),
                                  ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 24),
                                  child: Text("Seating area",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              DropdownButton(

                                // Initial Value
                                value: seatingArea,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: seatingAreas.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    seatingArea = newValue!;
                                  });
                                },
                              ),
                              Padding(
                                  padding: getPadding(left: 1, top: 21),
                                  child: Text("Contact number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtKarlaMedium22)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: contactNoController,
                                  hintText: "Enter your Contact Number",
                                  margin: getMargin(top: 21),
                                  shape: TextFormFieldShape.RoundedBorder8,
                                  padding: TextFormFieldPadding.PaddingTop10,
                                  fontStyle:
                                  TextFormFieldFontStyle.KarlaMediumItalic14),
                              Container(
                                  height: getVerticalSize(51),
                                  width: getHorizontalSize(350),
                                  margin: getMargin(left: 1, top: 22),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(
                                                    top: 9, right: 126),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5))))),
                                        CustomButton(
                                            height: getVerticalSize(51),
                                            width: getHorizontalSize(350),
                                            text: "Confirm Booking",
                                            onTap: () {
                                              onTapRectangleThirtyTwo(context);
                                            },
                                            variant:
                                                ButtonVariant.Yellow,
                                            fontStyle: ButtonFontStyle
                                                .KarlaMedium16Gray900,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmarkGray900)),
                                            alignment: Alignment.center)
                                      ]))
                            ]))))));
  }

  onTapRectangleThirtyTwo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => BookedPage()));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }

  void setState(Null Function() param0) {}
}
