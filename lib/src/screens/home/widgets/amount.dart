import 'package:flutter/material.dart';

class AmountField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  const AmountField({super.key, required this.controller, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Send Amount',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(183, 190, 198, 1),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Container(
            width: 2,
            height: 24,
            color: Colors.grey[200],
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 60,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: const Text(
                  'usd',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 221, 0, 1),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon: const Icon(
                  Icons.expand_more,
                  size: 28,
                ),
                items: <String>['usd', 'naira', 'rupee', 'cedis']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
