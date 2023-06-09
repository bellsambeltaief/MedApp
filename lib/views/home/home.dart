import 'package:doc_app/tools/colors_palette.dart';
import 'package:doc_app/views/home/home_container.dart';
import 'package:doc_app/widgets/search_field.dart';
import 'package:doc_app/views/sign/sign.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                color: ColorsPalette.primaryColor,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 50,
                ),
                child: SearchField(),
              ),
            ),
            const SizedBox(height: 20),
            const HomeContainer(),
            const SizedBox(height: 20),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: ColorsPalette.primaryColor,
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sign(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Pour contacter un médecin merci de ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Connecter',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
