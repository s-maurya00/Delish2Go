import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:delish2go/auth/sign_in.dart';

import 'package:delish2go/config/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delish2Go',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const SignIn(),
    );
  }
}