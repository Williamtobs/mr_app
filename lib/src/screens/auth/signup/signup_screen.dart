import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/auth/login/login.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';
import 'package:mr_app/src/screens/shared/app_plain_button.dart';
import 'package:mr_app/src/screens/shared/app_textfield.dart';
import 'package:mr_app/src/screens/shared/auth_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
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
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/logo.png',
                width: 81,
                height: 81,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppTextField(
                      controller: _firstNameController,
                      hintText: 'Enter first name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      controller: _lastNameController,
                      hintText: 'Enter last name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      controller: _emailController,
                      hintText: 'Enter email address',
                    ),
                    //password
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      controller: _passwordController,
                      hintText: 'Enter password',
                      obscureText: obscure,
                      isPassword: true,
                      visibilityChanged: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                      controller: _phoneController,
                      hintText: 'Enter mobile no.',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: AppButton(
                        text: 'SIGN UP',
                        onPressed: () {
                          // AuthPopUp();
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return const AuthPopUp();
                          //   },
                          // );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "already have an account ?",
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
                text: 'SIGN IN',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
