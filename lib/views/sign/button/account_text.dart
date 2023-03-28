import 'package:doc_app/tools/colors_palette.dart';
import 'package:flutter/material.dart';

class AccountText extends StatelessWidget {
  final void Function() onTapped;
  final String text1;

  const AccountText({
    Key? key,
    required this.onTapped,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Text(
        text1,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          color: ColorsPalette.primaryColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
