import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/about_restaurant_after_booking_screen/about_restaurant_after_booking_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionlistreservationsItemWidget extends StatelessWidget {
  // SectionlistreservationsItemWidget();

  @override
  Widget build(BuildContext context) {
    onTapRowjaywennington(context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutRestaurantAfterBookingScreen()));
    }
    return GestureDetector(
      onTap: (){
        onTapRowjaywennington(context);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CustomImageView(
            margin: getMargin(top:15),
            imagePath: ImageConstant.imgJaywennington150x145,
            height: getVerticalSize(
              150,
            ),
            width: getHorizontalSize(
              145,
            ),
            radius: BorderRadius.only(
              topLeft: Radius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
              bottomLeft: Radius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 14,
              bottom: 19,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Café",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtKarlaMedium20,
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Text(
                    "Reservation ID - 12345 67890 ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaMedium12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Text(
                    "Check in - 5:30 PM",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaRegular12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "Check out - 7:00 PM",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaRegular12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
