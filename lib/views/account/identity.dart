
import 'package:doc_app/views/account/widgets/otp_field.dart';
import 'package:doc_app/widgets/app_bar.dart';
import 'package:doc_app/widgets/buttons/button_login.dart';
import 'package:flutter/material.dart';

final List otp = [
  const OTPField(),
  const OTPField(),
  const OTPField(),
  const OTPField(),
  const OTPField(),
];

class Identity extends StatelessWidget {
  static String routeName = "/identity";
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppBarTop(
              textTop: 'Retour',
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const Text(
                    "Vérifier votre identité",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Saisissez le code que nous avons envoyé",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: otp.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Center(
                            child: otp[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ButtonLogin(
                    onTap: () {},
                    text: "Vérifier le code",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Renvoyer le code",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
