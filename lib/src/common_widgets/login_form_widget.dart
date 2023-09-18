import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../features/authentication/controllers/login_controller.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  LoginController myLoginController = Get.put(LoginController());

  final emailTitleController = TextEditingController();

  String email = "";

  final passwordTitleController = TextEditingController();

  String password = "";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) => Form(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color(0xffDFDFDF),
                          width: 1.0,
                        ),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: TextFormField(
                        controller: emailTitleController,
                        cursorColor: Colors.black,
                        cursorWidth: 1,
                        decoration: const InputDecoration(
                          hintText: "   Enter Username",
                          hintStyle: TextStyle(
                            color: Color(0xffAEAEAE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(height: 21),
                    
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color(0xffDFDFDF),
                          width: 1.0,
                        ),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: TextFormField(
                        obscureText: controller.obscureText,
                        controller: passwordTitleController,
                        cursorColor: Colors.black,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          hintText: "   Enter Password",
                          hintStyle: const TextStyle(
                            color: Color(0xffAEAEAE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                          ),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye_sharp),
                            onPressed: () {
                              controller.passwordObscure();
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: GestureDetector(
                          onTap: () async {
                            myLoginController.loginWithEmail(
                                emailTitleController.text,
                                passwordTitleController.text);
                          },
                          child: Container(
                            width: 110,
                            height: 40,
                            color: const Color(0xffCAE3A8),
                            child: const Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
            ));
  }
}
