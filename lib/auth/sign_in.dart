import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:delish2go/screens/home/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Future _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: [
          'email',
        ],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      print(user?.displayName);

      return user;
    }
    catch (e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background.png")
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Sign in to continue",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Delish2Go",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green.shade900,
                          offset: const Offset(3, 3)
                        )
                      ]
                    ),
                  ),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with google",
                    onPressed: () {
                      _googleSignUp()
                      .then(
                        (value) => Navigator
                        .of(context)
                        .pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          )
                        ),
                      );
                    },
                  ),
                  Column(
                    children: [
                      Text(
                        "By signing in you agree to our",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),  
                      ),
                      Text(
                        "Terms and Services",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),  
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}