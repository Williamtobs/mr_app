import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool isPassword;
  final Function()? visibilityChanged;
  const AppTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      this.isPassword = false,
      this.visibilityChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            spreadRadius: 0,
            blurRadius: 2.5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: isPassword
                    ? InkWell(
                        onTap: visibilityChanged,
                        child: Icon(obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
