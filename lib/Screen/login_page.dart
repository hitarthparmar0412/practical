import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:technource/Screen/splash_screen.dart';
import 'package:technource/widgets/comman_button.dart';

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
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 4,
                ),
                const Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Please sign in your account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                LoginTextfield(
                  validator: () {},
                  controller: _emailController,
                  hintText: 'Email-Id',
                ),
                LoginTextfield(
                  validator: () {},
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
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
                const Spacer(
                  flex: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: CommanButton(
                      text: "Sign in", visible: false, ontap: () {}),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: CommanButton(
                      ontap: () {}, text: "Sigin With Google", visible: true),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Don't have an account",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(),
                const Spacer(flex: 2),
                const Spacer(
                  flex: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
