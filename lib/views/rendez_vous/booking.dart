import 'package:doc_app/views/rendez_vous/date_time_picker.dart';
import 'package:doc_app/widgets/app_bar.dart';
import 'package:doc_app/widgets/buttons/button_login.dart';
import 'package:flutter/material.dart';


class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
          const  AppBarTop(textTop: "Votre meilleur docteur"),
         const SizedBox(height: 100),
            Padding(
                  padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
              child: ButtonLogin(onTap: (){  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DateTimePicker(),
                          ),
                        );}, text: "Prenez un Rendez-vous"),
            ),
          ],
        ),
      ),
    );
  }
}