import 'package:doc_app/views/sign/button/button_icon_text_horizontal.dart';
import 'package:doc_app/views/sign/button/button_login.dart';

import 'package:doc_app/views/sign/or_divider.dart';
import 'package:doc_app/views/sign/text_field_login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static String routeName = "/signUp";

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _CwConnexionState();
}

class _CwConnexionState extends State<SignUp> {
  bool isStayConnected = false;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFieldLogin(
            "Nom & Prénom",
  
            context: context,
          ),
          const SizedBox(height: 22),
          TextFieldLogin(
            "Email",
        
            context: context,
            isEmail: true,
          ),
          const SizedBox(height: 22),
          TextFieldLogin(
            "Mot de passe",
            context: context,
   
            isPassword: true,
          ),
          const SizedBox(height: 22),
          TextFieldLogin(
            "Confirmer Mot de passe",
            context: context,
 
            isPassword: true,
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonLogin(
              text: "S'inscrire",
              onTap: () {},
            ),
          ),
          const SizedBox(height: 22),
          const OrDivider(),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonIconTextHorizontal(
                icon: "assets/icons/facebook.svg",
                color: Colors.white,
                onTap: () {},
              ),
              const SizedBox(width: 10),
              ButtonIconTextHorizontal(
                icon: "assets/icons/google.svg",
                color: Colors.white,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
