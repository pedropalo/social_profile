import 'package:flutter/material.dart';

class AppThemeData{
  AppThemeData._();
  static AppThemeData _instance;
  static AppThemeData get to => _instance ??= AppThemeData._();
  _AppThemeDataColorsBase get colors => _AppThemeDataColors.to;
  _AppThemeDataFontSize get fontSize => _AppThemeDataFontSize.to;
  _AppThemeDataFontFamily get fontFamily => _AppThemeDataFontFamily.to;
  _AppThemeDataImageBase get fontColor => _AppThemeDataImage.to;
  _AppThemeDataImageBase get image => _AppThemeDataImage.to;
  double get defaultSize => 16.0;
  double get borderRadius => 2.0;
}

class _AppThemeDataColors {
  _AppThemeDataColors._();
  static _AppThemeDataColorsBase _instance;
  static _AppThemeDataColorsBase get to => _instance ??= _AppThemeDataColorsBase();
}

class _AppThemeDataImage {
  _AppThemeDataImage._();
  static _AppThemeDataImageBase _instance;
  static _AppThemeDataImageBase get to => _instance ??= _AppThemeDataImageBase();
}

class _AppThemeDataImageBase {

}

// Insert font size here
class _AppThemeDataFontSize {
  _AppThemeDataFontSize._();
  static _AppThemeDataFontSize _instance;
  static _AppThemeDataFontSize get to => _instance ??= _AppThemeDataFontSize._();

  // Size
  double get extraSmall => 10.0;
  double get small => 12.0;
  double get normal => 16.0;
  double get large => 18.0;
  double get extraLarge => 20.0;
}

// Insert font size here
class _AppThemeDataFontFamily {
  _AppThemeDataFontFamily._();
  static _AppThemeDataFontFamily _instance;
  static _AppThemeDataFontFamily get to => _instance ??= _AppThemeDataFontFamily._();
}

// Personalização
class _AppThemeDataColorsBase {
  Color get primary => Color(0xFFFEE1ED);
  Color get dark => Color(0xFFCF8EA6);

  Color get fontColor => Color(0xFFFFFFFF);
}
