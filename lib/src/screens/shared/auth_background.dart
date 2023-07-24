import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/dots.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 206,
                ),
              ],
            ),
          ),
          Positioned(
            right: -25,
            top: MediaQuery.of(context).size.height * 0.30,
            child: Image.asset(
              'assets/curve1.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: 255,
            ),
          ),
          Positioned(
            left: -25,
            top: MediaQuery.of(context).size.height * 0.40,
            child: Image.asset(
              'assets/curve2.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: 255,
            ),
          ),
          child
        ],
      ),
    );
  }
}
