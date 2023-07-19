import 'package:flutter/material.dart';

class ReceiveOption extends StatefulWidget {
  const ReceiveOption({super.key});

  @override
  State<ReceiveOption> createState() => _ReceiveOptionState();
}

class _ReceiveOptionState extends State<ReceiveOption> {
  String currency = 'USD';
  List<String> currencies = ['USD', 'INR', 'NGN', 'GHS'];
  final TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Receiver get',
          style: TextStyle(
            color: Colors.black,
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 80,
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: '0.00',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(183, 190, 198, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      color: Color.fromRGBO(47, 47, 47, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    isDense: true,
                    hint: Text(
                      currency,
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
                    items: currencies.map((String value) {
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
                        currency = _!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        // Divider(
        //   color: Colors.black,
        //   thickness: 2,
        // ),
      ],
    );
  }
}
