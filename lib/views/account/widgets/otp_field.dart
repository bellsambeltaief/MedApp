import 'package:doc_app/tools/colors_palette.dart';
import 'package:flutter/material.dart';

class OTPField extends StatelessWidget {
  const OTPField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          filled: true,
          fillColor: ColorsPalette.filedColor,
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
        ),
      ),
    );
  }
}
