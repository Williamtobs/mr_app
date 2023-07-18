import 'package:flutter/material.dart';

class HomeOption extends StatelessWidget {
  final bool selected;
  final String main, image, sub;
  const HomeOption(
      {super.key,
      required this.selected,
      required this.main,
      required this.sub,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 244,
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: selected
                    ? const Color.fromRGBO(2, 44, 67, 1)
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[200]!,
                  width: 4.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            image,
            width: 110,
            height: 127,
          ),
          const SizedBox(height: 10),
          Text(
            main,
            style: const TextStyle(
              color: Color.fromRGBO(255, 221, 0, 1),
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            sub,
            style: const TextStyle(
              color: Color.fromRGBO(47, 47, 47, 1),
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
