import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mr_app/src/screens/auth/login/login_with_email.dart';
import 'package:mr_app/src/screens/auth/signup/signup_screen.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:mr_app/src/screens/shared/app_plain_button.dart';
import 'package:mr_app/src/screens/shared/auth_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  //initial country india
  String initialCountry = 'IN';
  String countryName = 'India';
  String countryCode = '91';
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return AuthBackground(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height >= 732
                    ? MediaQuery.of(context).size.height * 0.2
                    : MediaQuery.of(context).size.height * 0.08,
              ),
              // Image.asset(
              //   'assets/logo.png',
              //   width: 81,
              //   height: 81,
              // ),
              // const SizedBox(
              //   height: 50,
              // ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                // height: 443,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              spreadRadius: 0,
                              blurRadius: 2.5,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CountryCodePicker(
                              initialSelection: initialCountry,
                              showCountryOnly: false,
                              flagDecoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              hideMainText: true,
                              padding: EdgeInsets.zero,
                              flagWidth: 37,
                              onChanged: (value) {
                                setState(() {
                                  initialCountry = value.code!;
                                  countryName = value.name!;
                                  countryCode = value.dialCode!;
                                });
                              },
                            ),
                            Text(
                              '${countryName.toUpperCase()} (+$countryCode)',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              spreadRadius: 0,
                              blurRadius: 2.5,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: _phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  hintText: 'Enter Phone Number',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: AppButton(
                        text: 'Next',
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginWIthEmail()));
                        },
                        child: const Text(
                          'LOGN WITH EMAIL/ USERNAME',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Or Sign In with',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(167, 167, 167, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/facebook.png',
                          width: 64,
                          height: 42,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/google.png',
                          width: 64,
                          height: 42,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppPlainButton(
                text: 'SIGNUP',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "login as a guest user",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(255, 221, 0, 1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
