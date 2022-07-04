import 'package:flutter/material.dart';

class CommanButton extends StatelessWidget {
  const CommanButton(
      {Key? key,
      required this.text,
      required this.visible,
      required this.ontap})
      : super(key: key);
  final String text;
  final bool visible;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.width / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: visible ? Colors.white : Colors.blueAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (visible == true) Icon(Icons.add),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: visible ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
