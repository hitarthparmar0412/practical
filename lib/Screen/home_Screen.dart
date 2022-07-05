import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:technource/Model/user_model.dart';
import 'package:technource/widgets/login_textfield.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel?> userModel = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response =
        await http.get(Uri.parse("http://myjson.dit.upm.es/api/bins/gbt5"));
    Map<String, dynamic> decodedJson = jsonDecode(response.body) ?? '';

    var usersList = [decodedJson["data"]];
    userModel = List.from(usersList).map((e) => UserModel.fromJson(e)).toList();
    log(response.body.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text("Create new Account"),
            const Text("Please Fill in the form"),
            LoginTextfield(
                hintText: "Full Name",
                text: userModel[0]?.name ?? "",
                observeText: false),
            LoginTextfield(
                hintText: "Email Aaddress",
                text: userModel[0]?.emailId ?? "",
                observeText: false),
            LoginTextfield(hintText: "Password", text: "", observeText: true),
          ],
        ),
      ),
    );
  }
}
