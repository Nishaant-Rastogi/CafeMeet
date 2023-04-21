import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookedOneItemWidget extends StatelessWidget {
  BookedOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgJaywennington,
          height: getVerticalSize(
            91,
          ),
          width: getHorizontalSize(
            95,
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
        Expanded(
          child: Container(
            padding: getPadding(
              left: 13,
              top: 6,
              right: 13,
              bottom: 6,
            ),
            decoration: AppDecoration.white.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                    left: 1,
                    top: 27,
                    bottom: 7,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Client Name",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtKarlaMediumItalic16Gray600,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 75,
                        ),
                        child: Text(
                          "12:30 AM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtKarlaMedium16Gray600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
