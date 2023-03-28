import 'package:doc_app/tools/colors_palette.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            color: Color(0xFFBDBDBD),
            height: 1.5,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Ou connectez vous avec",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsPalette.primaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Divider(
            color: Colors.grey,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
