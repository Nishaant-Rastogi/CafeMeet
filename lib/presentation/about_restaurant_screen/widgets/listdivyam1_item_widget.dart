import 'package:cafemeet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class Listdivyam1ItemWidget extends StatelessWidget {
  Listdivyam1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          all: 10,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Divyam",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKarlaRegular18Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 5,
                    ),
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: getVerticalSize(
                        15,
                      ),
                      unratedColor: ColorConstant.orange50,
                      itemCount: 5,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return Icon(
                          Icons.star,
                          color: ColorConstant.orange300,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                278,
              ),
              margin: getMargin(
                top: 10,
                right: 51,
              ),
              child: Text(
                "This is a review of the restaurant. This is a review of the restaurant. This is a review ...",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtKarlaMediumItalic12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
