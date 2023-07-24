import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/auth/signup/signup_screen.dart';
import 'package:mr_app/src/screens/home/home.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:mr_app/src/screens/shared/app_plain_button.dart';
import 'package:mr_app/src/screens/shared/app_textfield.dart';
import 'package:mr_app/src/screens/shared/appmodal.dart';
import 'package:mr_app/src/screens/shared/auth_background.dart';

class LoginWIthEmail extends StatefulWidget {
  const LoginWIthEmail({super.key});

  @override
  State<LoginWIthEmail> createState() => _LoginWIthEmailState();
}

class _LoginWIthEmailState extends State<LoginWIthEmail> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool password = true;
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height >= 732
                    ? MediaQuery.of(context).size.height * 0.12
                    : MediaQuery.of(context).size.height * 0.00,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const SizedBox(
                height: 20,
              ),
              // Image.asset(
              //   'assets/logo.png',
              //   width: 81,
              //   height: 81,
              // ),
              // const SizedBox(
              //   height: 40,
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
                  children: [
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppTextField(
                      controller: _emailController,
                      hintText: 'EMAIL ID/ USERNAME',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      controller: _passwordController,
                      hintText: 'PASSWORD',
                      isPassword: true,
                      obscureText: password,
                      visibilityChanged: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: AppButton(
                        text: 'SIGN IN',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Forgot Password | ',
                        style: const TextStyle(
                          color: Color.fromRGBO(2, 44, 67, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: 'OTP LOGIN',
                            style: const TextStyle(
                              color: Color.fromRGBO(2, 44, 67, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const AuthPopUp();
                                  },
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Or Sign In with',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(167, 167, 167, 1)),
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
