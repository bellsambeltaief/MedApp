import 'package:doc_app/views/home/widgets/more_specialities.dart';
import 'package:doc_app/views/home/widgets/rated_doctors.dart';
import 'package:doc_app/views/home/widgets/specialities.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Médecins les mieux notés",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                RatedDoctors(
                  speciality: 'Spécialités',
                  adress: 'Adresse',
                  name: 'Nom du Médecin',
                  image: 'assets/images/doc.png',
                ),
                SizedBox(height: 20),
                RatedDoctors(
                  speciality: 'Spécialités',
                  adress: 'Adresse',
                  name: 'Nom du Médecin',
                  image: 'assets/images/doc.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Spécialitiés",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 300,
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
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoreSpecialities(),
                      ),
                    );
                  },
                  child: const Text(
                    "Afficher plus de spécialités",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
