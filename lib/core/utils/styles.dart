import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

abstract class Styles {
  static const tSTittle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const tSMainButton = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: kScaffoldColor);
  static const textStyle21 = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w800,
  );

  static TextStyle textStyle2 = GoogleFonts.inder(
      textStyle: const TextStyle(
          color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w800));

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: kSecondaryColor,
  );

  static const tSTittleTextField =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 13);

  static const underLineStyle = TextStyle(
    decoration: TextDecoration.underline,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: kPrimaryColor,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const textStyle18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const textStyleBlackW60014 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14);

  static const textStyleWhiteW60014 =
  TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color:kScaffoldColor);
}
