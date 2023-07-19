import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/home/send_money.dart/send_money.dart';
import 'package:mr_app/src/screens/home/widgets/amount.dart';
import 'package:mr_app/src/screens/home/widgets/country_picker.dart';
import 'package:mr_app/src/screens/home/widgets/home_option.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:mr_app/src/screens/shared/dotted_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = 'location';
  final TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 221, 0, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        const Text(
                          'money Request',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(19, 23, 28, 1),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.menu,
                            color: Color.fromRGBO(19, 23, 28, 1),
                            size: 26,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const MySeparator(
                      color: Color.fromRGBO(10, 10, 10, 1),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'Hi ! Welcome \nyour',
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Service Area',
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(2, 44, 67, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = 'location';
                                  });
                                },
                                child: HomeOption(
                                  selected: selected == 'location',
                                  main: 'Find',
                                  sub: 'Location',
                                  image: 'assets/location.png',
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = 'transfer';
                                  });
                                },
                                child: HomeOption(
                                  selected: selected == 'transfer',
                                  main: 'Track',
                                  sub: 'Transfer',
                                  image: 'assets/location.png',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(19, 23, 28, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Send money\n 24/7 around the world',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 221, 0, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CountryPicker(
                      hint: 'Send to',
                    ),
                    const SizedBox(height: 10),
                    AmountField(
                      controller: _amountController,
                      icon: Icons.payments,
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        text: 'Current Location: ',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 221, 0, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: 'Service Location near - Jaipur 302019',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    AppButton(
                      text: 'Send Money Now',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SendMoney()));
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.verified_user,
                          color: Color.fromRGBO(255, 221, 0, 1),
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Be informed. Be aware. Protect yourself from fraud',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
