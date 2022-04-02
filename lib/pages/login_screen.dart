import 'package:code_monkeys_project/pages/login_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://i.ibb.co/Htb0Htq/login-bg.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 36, 16, 16),
                    child: Column(
                      children: const <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Start your path to financial freedom,",
                                style: TextStyle(
                                    color: Color(0xE6FFFFFF),
                                    fontSize: 40,
                                    fontFamily: 'Arial Rounded MT Bold'))),
                        SizedBox(height: 16),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Sign up now.",
                            style: TextStyle(
                                color: Color(0xE6FFFFFF),
                                fontSize: 20,
                                fontFamily: 'Arial Rounded MT Bold'),
                          ),
                        )
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  padding: const EdgeInsets.all(18),
                  child: LoginColumn()
                ),
              ],
            )));
  }
}
