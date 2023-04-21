import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class Listjaywennington1ItemWidget extends StatelessWidget {
  Listjaywennington1ItemWidget({this.onTapRowjaywennington});

  VoidCallback? onTapRowjaywennington;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowjaywennington?.call();
      },
      child: Row(
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
                    "Retail Café",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaMedium20,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
                      bottom: 6,
                    ),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemSize: getVerticalSize(
                            21,
                          ),
                          unratedColor: ColorConstant.orange50,
                          itemCount: 5,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) {
                            return Icon(
                              Icons.star,
                            );
                          },
                        ),
                        Padding(
                          padding: getPadding(
                            left: 91,
                            top: 1,
                          ),
                          child: Text(
                            "5km",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtKarlaMediumItalic16,
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
      ),
    );
  }
}
