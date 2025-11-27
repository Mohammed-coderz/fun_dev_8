import 'package:flutter/material.dart';
import 'package:fun_dev_8/screen/home_screen.dart';
import 'package:fun_dev_8/screen/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/shared_preferences_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: SizedBox(
            width: 350,
            height: 550,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Column(
                children: [
                  Text(
                    "welcome to our app",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "enter your email",
                      prefix: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "enter your password",
                      prefix: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text("remember me"),
                    ],
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () async {
                      // final SharedPreferences prefs =
                      //     await SharedPreferences.getInstance();

                      print("ischecked : $isChecked");

                      // final bool? mohammed = prefs.getBool('isRememberMe');
                      final bool? isRememberMe =
                          await SharedPreferencesHelper.getBool('isRememberMe');

                      print("isRememberMe : $isRememberMe");
                    },
                    child: Text("check SharedPreferences"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await SharedPreferencesHelper.saveBool(
                        'isRememberMe',
                        isChecked,
                      );
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomeScreen()),
                      // );
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("don't have account ?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                          print("sign up pressed");
                        },
                        child: Text("signup"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
