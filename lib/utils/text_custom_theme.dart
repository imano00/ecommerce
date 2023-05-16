import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextCustomTheme{

  TextTheme _textTheme(
      ThemeData themeData,
      TextStyle textStyle,
      Color primaryColor,
      bool darkMode,
      bool darkColor,
      ) {
    return themeData.textTheme.copyWith(
      displayLarge: _displayLarge(themeData, darkMode),
      displayMedium: _displayMedium(themeData, darkMode),
      displaySmall: _displaySmall(themeData, darkMode),
      headlineMedium: _headlineMedium(themeData, darkMode),
      //this is text theme for all title in app bar
      titleLarge: _titleLarge(themeData, darkMode),
      //this text theme is for card subtitle
      titleMedium: _titleMedium(themeData, darkMode),
      //this text theme is for search bar value
      titleSmall: _titleSmall(themeData),
      // this text theme is for body with white background in light mode
      // TextField used this style by default
      bodyLarge: _bodyLarge(themeData, darkMode),
      // this text theme is for body with white background in light mode
      bodyMedium: _bodyMedium(themeData, darkMode),
    );
  }

  TextStyle _bodyMedium(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.bodyMedium!.copyWith(
      color: darkMode ? Colors.white : Colors.black,
      fontSize: 16,
      overflow: TextOverflow.ellipsis,
      // fontFamily: "GothicA1",
      // fontFamily: "GothicA1",
    );
  }

  TextStyle _bodyLarge(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.bodyLarge!.copyWith(
      color: darkMode ? Colors.white : AppColors.textNearlyBlack,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
      // fontFamily: "OpenSansBold",
    );
  }

  TextStyle _titleSmall(ThemeData themeData) {
    return themeData.textTheme.titleSmall!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0.27,
      color: AppColors.mainColor,
    );
  }

  TextStyle _titleMedium(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.titleMedium!.copyWith(
      color: darkMode ? AppColors.nearlyWhite : AppColors.grey,
      fontWeight: FontWeight.w200,
      fontSize: 12,
      letterSpacing: 0.21,
      overflow: TextOverflow.ellipsis,
    );
  }

  TextStyle _titleLarge(
      ThemeData themeData,
      bool darkMode,
      ) {
    return themeData.textTheme.titleLarge!.copyWith(
      color: darkMode ? AppColors.nearlyWhite : Colors.black,
      // fontFamily: "OpenSansBold",
      overflow: TextOverflow.ellipsis,
    );
  }

  TextStyle _headlineMedium(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.headlineMedium!.copyWith(
      color: darkMode ? Colors.white : Colors.black,
      fontSize: 18,
      fontFamily: "GothicA1",
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
    );
  }

  TextStyle? _displaySmall(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.displaySmall?.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: 0.27,
      color: darkMode ? HexColor.fromHex('#B9BABC') : AppColors.darkGrey,
    );
  }

  TextStyle? _displayMedium(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.displayMedium?.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0.2,
      color: darkMode ? AppColors.nearlyWhite : AppColors.grey,
      overflow: TextOverflow.ellipsis,
    );
  }

  TextStyle? _displayLarge(ThemeData themeData, bool darkMode) {
    return themeData.textTheme.displayLarge?.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 22,
      letterSpacing: 0.27,
      color: darkMode ? AppColors.nearlyWhite : AppColors.darkGrey,
      overflow: TextOverflow.ellipsis,
    );
  }
}