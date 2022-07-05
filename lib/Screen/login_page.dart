import 'dart:convert';
import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:technource/widgets/comman_button.dart';
import 'package:http/http.dart' as http;

import 'home_Screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          validator: ((value) {
                            if (value.toString().isEmpty) {
                              return "Please Enter a valid Email";
                            }
                          }),
                          onChanged: (value) {
                            String name = value;
                          },
                          obscureText: false,
                          controller: _emailController,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email ID",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: ((value) {
                          if (value.toString().isEmpty) {
                            return "Please Enter Corrcet Password";
                          }
                          return null;
                        }),
                        onChanged: (value) {
                          var password = value;
                        },
                        obscureText: true,
                        controller: _passwordController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
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
                    text: "Sign in",
                    visible: false,
                    ontap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
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
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "Don't have an Account? ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: Colors.indigoAccent))
                ])),
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
