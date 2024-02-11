import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AppSvg {
  static const String _basePath = 'assets/icons/';

  static SvgPicture _getSvg(
    String fileName, {
    Color? color, 
    double? width, 
    double? height,
    BoxFit? fit
  }) {
    return SvgPicture.asset(
      '$_basePath$fileName.svg',
      color: color,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain
    );
  }

  static SvgPicture back({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('back', color: color, width: width, height: height, fit: fit);

  static SvgPicture cash({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('cash', color: color, width: width, height: height, fit: fit);
  
  static SvgPicture cashback({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('cashback', color: color, width: width, height: height, fit: fit);

  static SvgPicture gear({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('gear', color: color, width: width, height: height, fit: fit);

  static SvgPicture arrow({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('arrow', color: color, width: width, height: height, fit: fit);

  static SvgPicture check({Color? color, double? width, double? height, BoxFit? fit}) =>
    _getSvg('check', color: color, width: width, height: height, fit: fit);
}