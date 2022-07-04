// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/widgets.dart';

// import 'package:flutter/material.dart';

// class LoginTextfield extends StatelessWidget {
//   LoginTextfield(
//       {Key? key,
//       required this.controller,
//       required this.hintText,
//       this.icon,
//       required this.text,
//       required this.observeText})
//       : super(key: key);
//   final TextEditingController controller;
//   final String hintText;
//   final Widget? icon;
//   final String text;
//   final bool observeText;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Container(
//         alignment: Alignment.center,
//         height: MediaQuery.of(context).size.width / 6,
//         width: MediaQuery.of(context).size.width / 1.2,
//         decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(25)),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           child: TextFormField(
//             validator: valida,
//             obscureText: observeText,
//             controller: controller,
//             style: const TextStyle(
//               color: Colors.white,
//             ),
//             decoration: InputDecoration(
//               suffixIcon: icon,
//               border: InputBorder.none,
//               hintText: hintText,
//               hintStyle: const TextStyle(
//                 color: Colors.white54,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
