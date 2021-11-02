import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//flutter run -d chrome --web-renderer htmlY

class BrandColors {
  static const Color colorPrimaryDark = Color(0xFF191A22);
  static const Color colorPrimary = Color(0xFF292B3E);
  static const Color colorAccent = Color(0xFF21ba45);
  static const Color colorYellow = Color(0xFFF4FF81);
  static const Color colorWhite = Color(0xFFFBFAFF);
  static const Color colorTealAccent = Color(0xFF64FFDA);
  static const Color colorBackground = Color(0xFFFBFAFF);

  static const Color colorPink = Color(0xFFE66C75);
  static const Color colorOrange = Color(0xFFE8913A);
  static const Color colorBlue = Color(0xFF2962FF);

  //static const Color colorText = Color(0xFFD2DCF7);
  static const Color colorText = Color(0xFFFBFAFF);
  static const Color colorTextLight = Color(0xFF918D8D);
  static const Color colorTextSemiLight = Color(0xFF737373);
  static const Color colorTextDark = Color(0xFFe0e0e0);

  static const Color colorGreen = Color(0xFF40cf89);
  static const Color colorLightGray = Color(0xFFe2e2e2);
  static const Color colorGray = Color(0xFF8E8E93);
  static const Color colorDimText = Color(0xFFD2DCF7);
  static const Color colorPurple = Color(0xFF8F73F8);
  static const Color snackBarColor = Colors.indigo;
  static const Color aPrimaryColor = Colors.indigo;
//  Padding paddingg =EdgeInsets.all(20.0);

}

const primaryColor = Color(0xFF246BFD);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const defaultPadding = 16.0;
const Color btnColor = Color(0xff246BFD);
const Color aPrimaryColor = Color(0xFFFEC61C);
const Color shadaColor = Color(0xFFF4F4F4);
const Color aBackgroundColor = Color(0xFFF4F4F4);
const Color aBlackCardColor = Color(0xFF1A1A1A);
const Color aTextColor = Color(0xFF1A1A1A);
const Color aPriceTextColor = Color(0xFFA53034);

myStyle(double size, [Color? color, FontWeight? fw, double? height]) {
  return GoogleFonts.roboto(
    fontSize: size,
    color: color,
    fontWeight: fw,
    height: height ?? 1,
  );
}

myStyles14() {
  return GoogleFonts.roboto(
    fontSize: 14,
    color: BrandColors.colorText,
  );
}

myStyles12() {
  return GoogleFonts.roboto(
    fontSize: 12,
    color: BrandColors.colorText,
  );
}

myStyles16() {
  return GoogleFonts.roboto(
    fontSize: 16,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w400,
  );
}

myStyles18() {
  return GoogleFonts.roboto(
    fontSize: 18,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w700,
  );
}

myStyles20() {
  return GoogleFonts.roboto(
    fontSize: 20,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w700,
  );
}
