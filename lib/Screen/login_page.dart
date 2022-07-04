import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../widgets/login_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(
                flex: 4,
              ),
              const Text(
                "welcome Back!",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Please sign in your account",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              LoginTextfield(
                controller: _emailController,
                hintText: 'Enter a Email-Id',
              ),
              LoginTextfield(
                controller: _passwordController,
                hintText: 'Password',
              ),
              Spacer(
                flex: 1,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white.withOpacity(0.2)),
                  ),
                  onPressed: () {},
                ),
              ),
              Spacer(
                flex: 8,
              ),
              Container(
                child: Text("Sign in"),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigoAccent),
                height: 60,
              ),
              Spacer(
                flex: 1,
              ),
              Container(),
              Spacer(flex: 2),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ));
  }
}
