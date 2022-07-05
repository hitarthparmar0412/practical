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
                    Container(),
                    Text(
                      userModel[0]?.name ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      userModel[0]?.emailId ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              : const Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator())),
    );
  }
}
