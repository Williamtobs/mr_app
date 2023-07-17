import 'package:flutter/material.dart';

class AppPlainButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const AppPlainButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: const Color.fromRGBO(255, 221, 0, 1),
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(255, 221, 0, 1),
            ),
          ),
        ),
      ),
    );
  }
}
