import 'package:doc_app/tools/colors_palette.dart';
import 'package:flutter/material.dart';

class Specialities extends StatelessWidget {
  const Specialities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        color: ColorsPalette.filedColor,
      ),
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
    );
  }
}
