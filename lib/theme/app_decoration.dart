import 'package:flutter/material.dart';
import 'package:cafemeet/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.lightGreen9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtBlack => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get shadow => BoxDecoration(
        color: ColorConstant.orange50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.lightGreen9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5004c => BoxDecoration(
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
      );
  static BoxDecoration get black => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: ColorConstant.orange50,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius customBorderBL16 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderLR16 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
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
  );

  static BorderRadius txtRoundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
