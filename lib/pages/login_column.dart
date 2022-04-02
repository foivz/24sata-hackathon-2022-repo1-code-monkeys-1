import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class LoginColumn extends StatefulWidget {
  const LoginColumn({Key? key}) : super(key: key);

  @override
  State<LoginColumn> createState() => _LoginColumnState();
}

class _LoginColumnState extends State<LoginColumn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: ClipRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            labelText: "Type your email: ",
                            labelStyle: TextStyle(color: Colors.white70)),
                      )))),

          const SizedBox(height: 16),

          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: ClipRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            labelText: "Type your password: ",
                            labelStyle: TextStyle(color: Colors.white70)),
                      )))),

          const SizedBox(height: 8),

          TextButton(
              onPressed: () {  },
              child: const Text("Forgot password?",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                ),
              )
          ),

          const SizedBox(height: 8),

          ElevatedButton(
            onPressed: () {
            },
            child: Text("Login"),
          ),


          const SizedBox(height: 86),

          const Text("Don't have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white70,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 8),

          SignInButton(
            Buttons.Google,
            text: "Get started with Google",
            onPressed: () {},
          ),

          SignInButton(
            Buttons.FacebookNew,
            text: "Connect with Facebook",
            onPressed: () {},
          ),

          SignInButton(
            Buttons.Email,
            text: "Register with e-Mail",
            onPressed: () {},
          )
        ],
      )
    );
  }
}
