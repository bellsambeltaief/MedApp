import 'package:flutter/material.dart';

import 'package:doc_app/tools/colors_palette.dart';

class Specialities extends StatelessWidget {
  const Specialities({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: ColorsPalette.filedColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(icon),
          const SizedBox(height: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
