import 'package:doc_app/views/home/widgets/specialities.dart';
import 'package:doc_app/widgets/app_bar.dart';
import 'package:doc_app/widgets/search_field.dart';
import 'package:flutter/material.dart';

class MoreSpecialities extends StatelessWidget {
  static String routeName = "/moreSpecialities";
  const MoreSpecialities({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarTop(
                textTop: 'Spécialités',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20,
                ),
                child: SearchField(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20,
                ),
                child: SizedBox(
                  height: 600,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: const [
                      Specialities(
                        icon: "assets/images/doc.png",
                        text: 'Médecin Généraliste',
                      ),
                      Specialities(
                        icon: "assets/images/doc.png",
                        text: 'Médecin Généraliste',
                      ),
                      Specialities(
                        icon: "assets/images/doc.png",
                        text: 'Médecin Généraliste',
                      ),
                      Specialities(
                        icon: "assets/images/doc.png",
                        text: 'Médecin Généraliste',
                      ),
                      Specialities(
                        icon: "assets/images/doc.png",
                        text: 'Médecin Généraliste',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
