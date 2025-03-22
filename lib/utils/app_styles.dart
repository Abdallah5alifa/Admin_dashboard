import 'package:admin_dashboard/utils/size_config.dart';
import 'package:flutter/widgets.dart';

abstract class AppStyles {

  static TextStyle regular16(context){
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle mediam16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle mediam20(BuildContext context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontsize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontsize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}