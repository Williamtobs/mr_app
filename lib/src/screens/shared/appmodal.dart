import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:pinput/pinput.dart';

class AuthPopUp extends StatefulWidget {
  const AuthPopUp({super.key});

  @override
  State<AuthPopUp> createState() => _AuthPopUpState();
}

class _AuthPopUpState extends State<AuthPopUp> {
  final TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width * 0.6,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 76,
                      width: 76,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 226, 226, 223),
                          width: 8,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.phone_iphone,
                          size: 45,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Enter 4 Digits code',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(167, 167, 167, 1)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Pinput(
                      length: 4,
                      controller: _codeController,
                      defaultPinTheme: PinTheme(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '3:45',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(2, 44, 67, 1)),
                        ),
                        const Text(
                          'Resent >',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(2, 44, 67, 1)),
                        ),
                        Container(
                          width: 40,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                text: 'VERIFY',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
