import 'package:ecommerce_mobile_app/src/modules/Authorization/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_navigation_botton.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../../home/view/home_board.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

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
                "Welcome",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please enter your data to continue",
                style: TextStyle(fontSize: 15, color: Colors.grey),
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
                  controller: passwordController,
                  text: "password",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(
                      text: "Forgot password?",
                      onPressed: () {},
                      textColor: Colors.red,
                      textSize: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
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
                      text: "Don't have an account? Create an account",
                      onPressed: () {
                        Get.to(() => const SignUpPage());
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
        text: "Login",
        onPressed: () {
          Get.to(() => const HomeBoard());
        },
      ),
    );
  }
}
