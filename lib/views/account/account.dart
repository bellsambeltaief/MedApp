import 'package:doc_app/views/account/identity.dart';
import 'package:doc_app/widgets/app_bar.dart';
import 'package:doc_app/widgets/buttons/button_login.dart';
import 'package:doc_app/widgets/text_field_login.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  static String routeName = "/account";
  const Account({super.key});

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
                    "Récupérer votre compte",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Saisissez votre e-mail ou",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    "votre numéro de téléphone",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextFieldLogin(
                    "E-mail",
                    context: context,
                  ),
                  const SizedBox(height: 20),
                  ButtonLogin(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Identity(),
                        ),
                      );
                    },
                    text: "Valider",
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
