import 'package:doc_app/views/home/widgets/rated_doctors.dart';
import 'package:doc_app/views/home/widgets/specialities.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            "Top Rated Doctors",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              RatedDoctors(
                speciality: 'Speciality',
                adress: 'Adress',
                name: 'Doctor Name',
                image: 'assets/images/doc.png',
              ),
              SizedBox(height: 20),
              RatedDoctors(
                speciality: 'Speciality',
                adress: 'Adress',
                name: 'Doctor Name',
                image: 'assets/images/doc.png',
              ),
            ],
          ),
        ),
        Column(
          children: [
            const Text(
              "Specialities",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children:const [
                Specialities(),
                Specialities(),
                Specialities(),
                Specialities(),
                Specialities(),
                Specialities(),
                Specialities(),
                Specialities(),
              ],
            )
          ],
        )
      ],
    );
  }
}
