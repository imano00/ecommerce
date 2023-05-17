import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? textColor;
  final Color? iconColor;

  const IconTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      this.textColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
            ),
          )
        ],
      ),
    );
  }
}
