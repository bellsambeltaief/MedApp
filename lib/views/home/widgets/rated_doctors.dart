import 'package:flutter/material.dart';

import 'package:doc_app/tools/colors_palette.dart';

class RatedDoctors extends StatelessWidget {
  const RatedDoctors({
    Key? key,
    required this.name,
    required this.speciality,
    required this.adress,
    required this.image,
  }) : super(key: key);
  final String name;
  final String speciality;
  final String adress;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: ColorsPalette.filedColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    speciality,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.location_history_rounded),
                      Text(
                        adress,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
