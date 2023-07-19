import 'package:flutter/material.dart';

class NewReceiver extends StatelessWidget {
  const NewReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 96,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: const Color.fromRGBO(234, 234, 232, 1),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 75,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(245, 246, 250, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(children: [
            const Text(
              'Add new Receiver',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 28,
                  color: Color.fromRGBO(255, 221, 0, 1),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
