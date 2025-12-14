import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/login_model.dart';

class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  LoginModel? login;

  Future<void> loginMethod({
    required String email,
    required String password,
  }) async {
    isLoading = true;
    notifyListeners();

    /// url for get data from api
    final url = Uri.parse(
      "https://455298047e94.ngrok-free.app/ECOMMERCE/auth/login.php",
    );

    /// response for get data from api
    final response = await http.post(
      url,
      body: json.encode({"phone": email, "password": password}),
    );

    print("response status code =>  ${response.statusCode}");
    print("response body =>  ${response.body}");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      login = LoginModel.fromJson(data);
    } else {
      print("error => ${response.statusCode}");
    }

    isLoading = false;
    notifyListeners();
  }
}
