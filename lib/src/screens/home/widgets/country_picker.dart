import 'package:flutter/material.dart';

class CountryPicker extends StatelessWidget {
  final String hint;
  const CountryPicker({super.key, required this.hint});

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
          const Icon(
            Icons.language,
            size: 28,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text(
                  hint,
                  style: const TextStyle(
                    color: Color.fromRGBO(183, 190, 198, 1),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon: const Icon(
                  Icons.expand_more,
                  size: 28,
                ),
                items: <String>['United State', 'India', 'Nigeria', 'Ghana']
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
