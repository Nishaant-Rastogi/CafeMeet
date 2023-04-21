import 'package:cafemeet/core/app_export.dart';
import 'package:cafemeet/presentation/review_edit_screen/review_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget();

  @override
  Widget build(BuildContext context) {
    onTapRowjaywennington(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewEditScreen()));
    }
    return GestureDetector(
      onTap: () {
        onTapRowjaywennington(context);
      },
      child:Row(
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
              left: 10,
              top: 6,
              right: 10,
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
                  Padding(
                    padding: getPadding(
                      left: 3,
                    ),
          child: Row(
          children: [
          Text(
          "Café",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtKarlaMedium20,
          ),
          Padding(
          padding: getPadding(
          left: 85,
          top: 2,
          ),
          child: RatingBar.builder(
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
          ),
          ],
          ),
          ),
          Container(
          width: getHorizontalSize(
                    211,
                  ),
          margin: getMargin(
                    left: 3,
                    top: 15,
                    bottom: 10,
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
        ),
      ],
      )
    );
  }
}
