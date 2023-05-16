import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color iconColor;

  const IconText(
      {Key? key,
      required this.icon,
      required this.text,
      required this.textColor,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const Divider(),
        Text(
          text,
          style: TextStyle(color: textColor),
        )
      ],
    );
  }
}
