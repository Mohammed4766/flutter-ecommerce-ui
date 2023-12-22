import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../widgets/custom_navigation_botton.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/custom_text_field.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool v = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 100,
              ),
              Column(children: [
                CustomTextField(
                  controller: emailController,
                  text: "Email",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: usernameController,
                  text: "Username",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: passwordController,
                  text: "password",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.green,
                      onChanged: (bool value) {
                        setState(() {
                          v = !v;
                        });
                      },
                      value: v,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomTextButton(
                      text: "Already have an account? Signin",
                      onPressed: () {
                        Get.to(() => const LoginPage());
                      },
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBotton(
        text: "Sign Up",
        onPressed: () {},
      ),
    );
  }
}
