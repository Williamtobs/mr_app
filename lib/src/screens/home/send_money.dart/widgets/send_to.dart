import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/home/send_money.dart/widgets/receive_option.dart';

class SendTo extends StatefulWidget {
  const SendTo({super.key});

  @override
  State<SendTo> createState() => _SendToState();
}

class _SendToState extends State<SendTo> {
  String selectedCountry = 'United State';
  List<String> countries = ['United State', 'India', 'Nigeria', 'Ghana'];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 96,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(234, 234, 232, 1),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/flag.png',
            width: 37,
            height: 37,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Send to',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 127,
                child: DropdownButton<String>(
                  isExpanded: true,
                  isDense: true,
                  hint: Text(
                    selectedCountry,
                    style: const TextStyle(
                      color: Color.fromRGBO(183, 190, 198, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  icon: const Icon(
                    Icons.expand_more,
                    size: 28,
                  ),
                  items: countries.map((String value) {
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
                  onChanged: (_) {
                    setState(() {
                      selectedCountry = _!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Send up to 5,000.00 USD',
                style: TextStyle(
                  color: Color.fromRGBO(128, 128, 128, 1),
                  fontSize: 9,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const Spacer(),
          const ReceiveOption()
        ],
      ),
    );
  }
}
