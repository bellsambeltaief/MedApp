import 'package:doc_app/tools/colors_palette.dart';
import 'package:flutter/material.dart';

class TextFieldLogin extends TextField {
  TextFieldLogin(
    String name, {
    Key? key,
    bool isPassword = false,
    bool isEmail = false,
    Function(String)? onChanged,
    String? errorText,
    TextEditingController? controller,
    required BuildContext context,
  }) : super(
          key: key,
          autofocus: false,
          controller: controller,
          obscureText: isPassword,
          onChanged: onChanged,
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: name,
            errorText: errorText,
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
          textInputAction: TextInputAction.next,
        );
}
