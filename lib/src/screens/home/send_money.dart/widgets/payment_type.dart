import 'package:flutter/material.dart';

class PaymentTypeWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String time;
  const PaymentTypeWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 29,
            width: 29,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromRGBO(112, 112, 112, 1),
                width: 1,
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(159, 159, 159, 1),
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(159, 159, 159, 1),
            ),
          ),
        ],
      ),
    );
  }
}
