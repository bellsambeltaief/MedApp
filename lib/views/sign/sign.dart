import 'package:doc_app/tools/colors_palette.dart';
import 'package:doc_app/views/sign/button/button_sign.dart';
import 'package:doc_app/views/sign/sign_in.dart';
import 'package:doc_app/views/sign/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sign extends StatefulWidget {
 
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final bool onPressed = false;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int currentPage = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (currentFocus.hasPrimaryFocus == false &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70, bottom: 30),
              child: Center(child: Icon(Icons.person_pin)),
            ),
            Row(
              children: [
                /** bouton connexion and underline **/
                Expanded(
                  child: ButtonSign(
                    text: "Se Connecter",
                    isSelected: currentPage == 0,
                    onTap: () {
                      setState(() {
                        _controller.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    },
                    color:
                        onPressed ? ColorsPalette.primaryColor : Colors.black,
                  ),
                ),
                Container(
                  width: 2,
                  height: 25,
                  color: Colors.grey.shade300,
                ),
                Expanded(
                  child: ButtonSign(
                    text: "Inscription",
                    isSelected: currentPage == 1,
                    onTap: () {
                      setState(() {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    },
                    color:
                        onPressed ? ColorsPalette.primaryColor : Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: _controller,
                children: const [
                  SignIn(),
                  SignUp(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
