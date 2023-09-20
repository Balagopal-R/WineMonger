import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine_monger/src/features/authentication/screens/dashboard_screen/dashboard_screen.dart';
import 'package:wine_monger/src/models/login_model.dart';

import '../../../managers/local_db/wm_shared_preference.dart';

class LoginController extends GetxController {
   late final WMSharedPreference sp = WMSharedPreference();

  bool obscureText = true;
  void passwordObscure() {
    obscureText = !obscureText;
    update();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<LoginModel> loginWithEmail(username, password) async {
    var headers = {'Content-Type': 'application/json'};
    var responseBody;

    try {
      var url = Uri.parse("http://winemonger.nintriva.com//api/login");

      Map body = {'username': username, 'password': password};

      final response = await http.post(url, body: body);
      print(response);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        responseBody = LoginModel.fromJson(json);

        var userLevel= responseBody.userLevel;
        print(userLevel);
        var apiKey= responseBody.apiKey;
        print(apiKey);
        var name = responseBody.firstname;
        print(name);

        
        
        sp.saveUserInformation(name, userLevel, apiKey);
        
        Get.to(const DashBoardScreen());

        return responseBody;
      } else {
        print("body: ${response.body}");

        Get.snackbar(
          "Alert",
          "Invalid Username or Password",
          duration: Duration(seconds: 3),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: Colors.red,
          borderRadius: 10,
          margin: EdgeInsets.all(10),
          isDismissible: true,
        );
        return responseBody;
      }
    } catch (e) {
      print("error in catch");
    }
    return responseBody;
  }
}
