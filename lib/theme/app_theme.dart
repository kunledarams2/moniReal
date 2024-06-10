import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  Color get backgroundColor => const Color(0xFFFFFFFF);
  Color get primaryColor => const Color(0xFF1F1B17);
  Color get accentColor => const Color(0xFFFB8500);
  Color get lightOrange => const Color(0xFFFFF3E6);
  Color get lightGrey => const Color(0xFFF4F4F4);
  Color get textLightGrey => const Color(0xFF90949E);
  Color get searchBarGrey => const Color(0xFFEFEFF0);
  Color get red => const Color(0xFFFF3B30);
  Color get hintColor => const Color(0xFF6F6B67);
  Color get lighterGrey => const Color(0xFFF2F2F2);
  Color get textGrey => const Color(0xFF4F4F4F);
  Color get primaryTextColor => const Color(0x991F1B17);
  Color get green => const Color(0xFF86F80D);
  Color get darkModeBackgroundColor => const Color(0xFF1C1C1E);
  Color get darkModePrimaryColor => const Color(0xFFFFFFFF);
  Color get darkModeAccentColor => const Color(0xFFFB8500);
  Color get darkModeLightGrey => const Color(0xFF2C2C2C);
  Color get darkModeRed => const Color(0xFFFF3B30);
  Color get darkModeHintColor => const Color(0xFFEBEBF5);
  Color get darkModeLighterGrey => const Color(0xFF2C2C2C);
  Color get darkModeTextGrey => const Color(0x80FFFFFF);
  Color get darkModeGreen => const Color(0xFF86F80D);
  Color get appBackgroundColor => const Color(0xffCC3366);
  Color get lightAppColor => const Color(0xfff5d6e5);
  Color get lightTextHeaderColor => const Color(0xffFAFAFB);
  Color get iconsColor =>const Color(0xFFE085A3);
  Color get buttonActiveColor => const Color(0xFF232324);
  Color get buttonInActiveColor => const Color(0xFFBABEC2);
  Color get appSecondaryColor => const Color(0xFFA5957E);
  Color get blackAppColor => const Color(0XFF232220);




  String get graphikFontFamily => 'Graphik';

  ThemeData get themeData => ThemeData(
        unselectedWidgetColor: primaryColor,
        toggleableActiveColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        backgroundColor: backgroundColor,
        primaryColor: primaryColor,
        splashColor: Colors.transparent,
        // ignore: deprecated_member_use
        accentColor: accentColor,
        primaryColorDark: primaryColor,
        dividerColor: lightGrey,
        errorColor: red,
        hintColor: hintColor,
        disabledColor: Colors.transparent,
        highlightColor: Colors.transparent,
        secondaryHeaderColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: -0.41,
            color: primaryColor,
          ),
          bodyText2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: -0.24,
            color: hintColor,
          ),
          subtitle1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: hintColor,
          ),
          subtitle2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: primaryColor,
          ),
          headline1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            fontSize: 24,
            letterSpacing: 1,
            color: primaryColor,
          ),
          headline2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 22,
            letterSpacing: 1,
            color: primaryColor,
          ),
          headline3: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: -0.24,
            color: primaryColor,
          ),
          button: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: -0.24,
            color: backgroundColor,
          ),
        ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(

            statusBarColor: Colors.green,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          )
        )
        // buttonTheme: ButtonThemeData(
        //   height: 37,
        //   minWidth: 237,
        //   buttonColor: accentColor,
        //   disabledColor: lightGrey,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(18.5),
        //   ),
        // ),
      );

  ThemeData get darkModeThemeData => ThemeData(
        brightness: Brightness.dark,
        unselectedWidgetColor: darkModePrimaryColor,
        toggleableActiveColor: darkModePrimaryColor,
        scaffoldBackgroundColor: darkModeBackgroundColor,
        backgroundColor: darkModeBackgroundColor,
        primaryColor: darkModePrimaryColor,
        splashColor: Colors.transparent,
        primaryColorDark: darkModePrimaryColor,
        // ignore: deprecated_member_use
        accentColor: darkModeAccentColor,
        dividerColor: darkModeLightGrey,
        errorColor: darkModeRed,
        hintColor: darkModeHintColor,
        disabledColor: darkModePrimaryColor,
        highlightColor: Colors.transparent,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: -0.41,
            color: darkModePrimaryColor,
          ),
          bodyText2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: -0.24,
            // height: 21,
            color: darkModePrimaryColor,
          ),
          subtitle1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: darkModeHintColor,
          ),
          subtitle2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: darkModePrimaryColor,
          ),
          headline1: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            fontSize: 24,
            letterSpacing: 1,
            color: darkModePrimaryColor,
          ),
          headline2: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 22,
            letterSpacing: 1,
            color: darkModePrimaryColor,
          ),
          headline3: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: -0.24,
            color: darkModePrimaryColor,
          ),
          button: TextStyle(
            fontFamily: graphikFontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: -0.24,
            color: darkModePrimaryColor,
          ),
        ),
        // buttonTheme: ButtonThemeData(
        //   height: 37,
        //   minWidth: 237,
        //   buttonColor: accentColor,
        //   disabledColor: lightGrey,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(18.5),
        //   ),
        // ),
      );
}
