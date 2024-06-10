
import 'package:flutter/material.dart';

graphikRegular({Color? fontColor,double? fontSize,FontWeight? fontWeight,TextDecoration? textDecoration,double?lineHeight,  String? fontFamily}) =>  TextStyle(
    fontFamily: fontFamily??'EuclidCircularA',
    color: fontColor??const Color(0xff575759),
    fontSize: fontSize??36,
    fontWeight: fontWeight??FontWeight.normal,
    decoration: textDecoration,
    height: lineHeight,




);