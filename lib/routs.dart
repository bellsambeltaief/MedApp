
import 'package:doc_app/views/home/home.dart';
import 'package:doc_app/views/sign/sign_in.dart';
import 'package:doc_app/views/sign/sign_up.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SignIn.routeName: (context) => const SignIn(),
  SignUp.routeName: (context) => const SignUp(),
  Home.routeName:(context) => const Home(),
};
