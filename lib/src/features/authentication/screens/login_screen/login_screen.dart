import 'package:flutter/material.dart';
import 'package:wine_monger/src/common_widgets/login_form_widget.dart';
import 'package:wine_monger/src/common_widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}