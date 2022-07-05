import 'package:flutter/material.dart';
import 'package:technource/widgets/login_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text("Create new Account"),
            const Text("Please Fill in the form"),
            LoginTextfield(hintText: "Full Name", text: "", observeText: false),
            LoginTextfield(
                hintText: "Email Aaddress", text: "", observeText: false),
            LoginTextfield(
                hintText: "Phone number", text: "", observeText: false),
            LoginTextfield(hintText: "Password", text: "", observeText: true),
          ],
        ),
      ),
    );
  }
}
