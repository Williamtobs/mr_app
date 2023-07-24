import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/home/send_money.dart/widgets/payment_type.dart';
import 'package:mr_app/src/screens/home/send_money.dart/widgets/send_to.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:mr_app/src/util/payment_enum.dart';

class Initiate extends StatefulWidget {
  final Function() onTap;
  const Initiate({super.key, required this.onTap});

  @override
  State<Initiate> createState() => _InitiateState();
}

class _InitiateState extends State<Initiate> {
  String type = 'bank';
  PaymentType paymentType = PaymentType.online;
  bool _switchValue = true;
  final TextEditingController _promoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.93,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SendTo(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How does your receiver want the money?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(10, 10, 10, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            type = 'bank';
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 83,
                              height: 83,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: type == 'bank'
                                    ? Colors.black
                                    : const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                  color: const Color.fromRGBO(112, 112, 112, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.account_balance,
                                  color: type == 'bank'
                                      ? Colors.yellow
                                      : Colors.black,
                                  size: 50,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Bank account',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            type = 'cash';
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 83,
                              height: 83,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: type == 'cash'
                                    ? Colors.black
                                    : const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                  color: const Color.fromRGBO(112, 112, 112, 1),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.payments_outlined,
                                  color: type == 'cash'
                                      ? Colors.yellow
                                      : Colors.black,
                                  size: 50,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Cash pick up',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How would you like to pay?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(10, 10, 10, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        child: Radio(
                            value: PaymentType.online,
                            groupValue: paymentType,
                            fillColor: MaterialStateProperty.all(Colors.yellow),
                            onChanged: (value) {
                              setState(() {
                                paymentType = value!;
                              });
                            }),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Pay online',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(10, 10, 10, 1),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 24,
                        child: Radio(
                            value: PaymentType.instore,
                            groupValue: paymentType,
                            fillColor: MaterialStateProperty.all(Colors.yellow),
                            onChanged: (value) {
                              setState(() {
                                paymentType = value!;
                              });
                            }),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Pay cash in-store',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(10, 10, 10, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentTypeWidget(
                        icon: Icons.credit_card,
                        title: 'Credit card',
                        subtitle: 'Fees 10.00 USD',
                        time: 'in minutes',
                      ),
                      PaymentTypeWidget(
                        icon: Icons.credit_card,
                        title: 'Debit card',
                        subtitle: 'Fees 9.20 USD',
                        time: 'in minutes',
                      ),
                      PaymentTypeWidget(
                        icon: Icons.account_balance,
                        title: 'Bank Account',
                        subtitle: 'Fees 7.20 USD',
                        time: 'in minutes',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            // const Spacer(),
            Container(
              // height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(19, 23, 28, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Do you have a promo code',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 99,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(34, 36, 39, 1),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              'enter promo code',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(159, 159, 159, 1),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 112,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: TextFormField(
                                controller: _promoController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'apply',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Fee :',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Total :',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Service :',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '10.00 USD',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '110.00 USD',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'in minutes',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  AppButton(text: 'Continue', onPressed: widget.onTap)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
