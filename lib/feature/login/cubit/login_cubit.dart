import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../model/login_model.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(OnInitialLoginState());

  void login({required String email, required String password}) async {
    emit(OnStartLoginState());
    try {
      final url = Uri.parse(
        "https://455298047e94.ngrok-free.app/ECOMMERCE/auth/login.php",
      );
      final response = await http.post(
        url,
        body: json.encode({"phone": email, "password": password}),
      );
      print("response status code =>  ${response.statusCode}");
      print("response body =>  ${response.body}");
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        LoginModel login = LoginModel.fromJson(data);
        emit(OnLoadedLoginState(login.data!.accessToken ?? ""));
      } else {
        emit(OnErrorLoginState("something went wrong"));
      }
    } catch (e) {
      emit(OnErrorLoginState(e.toString()));
    }
  }
}
