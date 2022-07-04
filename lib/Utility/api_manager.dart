// import 'dart:convert';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:technource/Utility/app_logs.dart';

// class ApiManager {
//   bool internet = false;
//   Future<bool> checkConnection() async {
//     Connectivity checkconnectivity = Connectivity();
//     if (checkconnectivity == await (ConnectivityResult.none)) {
//       return internet = false;
//     } else {
//       return internet = true;
//     }
//   }

//   postCall(
//       String url, Map<String, dynamic> request, BuildContext context) async {
//     try {
//       var uri = Uri.parse(url);

//       uri = uri.replace(queryParameters: request);

//       var headers;
//       headers = await getHeaders();
//       AppLogs.debugging(headers);
//       AppLogs.debugging(uri);
//       AppLogs.debugging(request);
//       http.Response response =
//           await http.post(uri, body: jsonEncode(request), headers: headers);
//       if (response.statusCode == 401) {
//         AppLogs.debugging("${response.statusCode}");
//         AppLogs.debugging(response.body);
//       } else {
//         AppLogs.debugging("${response.statusCode}");
//         AppLogs.debugging(response.body);
//         Map<String, dynamic> decodeJson = json.decode(response.body);
//         return await json.decode(response.body);
//       }
//     } catch (e) {
//       CommonResponse commonResponse =
//           CommonResponse(message: e.toString(), status: "0");
//       return await json.decode(json.encode(commonResponse.toJson()));
//     }
//   }

//   getCall(
//       String url, Map<String, dynamic> request, BuildContext context) async {
//     // try {
//     var headers;
//     headers = await getHeaders();
//     var uri2 = Uri.parse(url);
//     try {
//       if (request != null) {
//         uri2 = uri2.replace(queryParameters: request);
//         http.Response response = await http.get(uri2, headers: headers);
//         AppLogs.debugging("$uri2");
//         print(response.statusCode);
//         if (response.statusCode == 401) {
//           AppLogs.debugging("${response.statusCode}");
//           AppLogs.debugging(response.body);
//           CommonResponse commonResponce = CommonResponse(
//               message: AppString().unauthenticated.toString(), status: "401");
//           return await json.decode(json.encode(commonResponce.toJson()));
//         } else {
//           AppLogs.debugging("${response.statusCode}");
//           AppLogs.debugging(response.body);
//           Map<String, dynamic> decodeJson =
//               json.decode(response.body.toString());
//           return await json.decode(response.body);
//         }
//       }
//     } catch (e) {
//       print("EERRROORR:: $e");
//       CommonResponse commonResponse =
//           CommonResponse(message: e.toString(), status: "0");
//       return await json.decode(json.encode(commonResponse.toJson()));
//     }
//   }

//   Future<dynamic> getHeaders() async {
//     return {
//       "Accept": "application/json",
//       "content-Type": "application/json",
//     };
//   }
// }
