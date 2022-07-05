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
  bool _isLoading = true;

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
    _isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: !_isLoading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: userModel[0]?.profilePic != null
                            ? Image.network(userModel[0]!.profilePic.toString())
                            : SizedBox()),
                    LoginTextfield(
                        hintText: userModel[0]?.name ?? "",
                        text: "name",
                        observeText: false),
                    LoginTextfield(
                        text: "email id",
                        hintText: userModel[0]?.emailId ?? "",
                        observeText: false),
                  ],
                )
              : const Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator())),
    );
  }
}
