import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final String text;
  final Color? textColor;
  final Color? iconColor;

  const IconTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      this.textColor,
      this.iconColor,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: iconColor ?? AppColors.iconColor1,
            size: iconSize ?? 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? AppColors.nearlyWhite,
                fontFamily: GoogleFonts.dmSerifDisplay().fontFamily,
              ),
            ),
          )
        ],
      ),
    );
  }
}
