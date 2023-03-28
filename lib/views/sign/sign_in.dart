import 'package:doc_app/views/sign/button/account_text.dart';
import 'package:doc_app/views/sign/button/button_icon_text_horizontal.dart';
import 'package:doc_app/views/sign/button/button_login.dart';
import 'package:doc_app/views/sign/or_divider.dart';
import 'package:doc_app/views/sign/sign_up.dart';
import 'package:doc_app/views/sign/text_field_login.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static String routeName="/signIn";
  static Page page() => const MaterialPage<void>(child: SignIn());

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _CwConnexionState();
}

class _CwConnexionState extends State<SignIn> {
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
            "Email",
        
            controller: _email,
            context: context,
            isEmail: true,
          ),
          const SizedBox(height: 22),
          TextFieldLogin(
            "Mot de passe",
          
            context: context,
            controller: _password,
            isPassword: true,
          ),
          const SizedBox(height: 22),
          const Text(
            "Mot de passe oublié?",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonLogin(
              text: "Se Connecter",
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
          AccountText(
            onTapped: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ),
              );
            },
            text1: "Nouveau sur Med? S'inscrire",
          ),
        ],
      ),
    );
  }
}
