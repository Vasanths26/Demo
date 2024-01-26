import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {
  const BottomIcons(
      {super.key,
      required this.text,
      required this.icon,
      required this.colors});
  final String text;
  final IconData icon;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 32,
          width: 32,
          child: Icon(
            icon,
            size: 32,
            color: colors,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 18,
          // width: 24,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 8,
              color: colors,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
