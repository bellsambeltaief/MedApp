import 'package:doc_app/tools/colors_palette.dart';
import 'package:doc_app/views/home/widgets/specialities.dart';
import 'package:flutter/material.dart';

class MoreSpecialities extends StatelessWidget {
  static String routeName = "/moreSpecialities";
  const MoreSpecialities({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsPalette.primaryColor,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Specialities',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20,
          ),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: const [
              Specialities(
                icon: "assets/images/doc.png",
                text: 'General Medecin',
              ),
              Specialities(
                icon: "assets/images/doc.png",
                text: 'General Medecin',
              ),
              Specialities(
                icon: "assets/images/doc.png",
                text: 'General Medecin',
              ),
              Specialities(
                icon: "assets/images/doc.png",
                text: 'General Medecin',
              ),
              Specialities(
                icon: "assets/images/doc.png",
                text: 'General Medecin',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
