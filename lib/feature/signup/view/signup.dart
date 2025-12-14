import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fun_dev_8/feature/login/view/login_screen.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  signup() async {
    /// url for get data from api
    final url = Uri.parse(
      "https://6917554ec172.ngrok-free.app/ECOMMERCE/auth/register.php",
    );

    /// response for get data from api
    final response = await http.post(
      url,
      body: json.encode({
        "username": "m7md sameer",
        "email": "m7mdsameer@example.com",
        "phone": "079",
        "password": "123456",
      }),
    );

    print("response status code =>  ${response.statusCode}");
    print("response body =>  ${response.body}");

    /// check if response is success
    /// if success save data in data list
    if (response.statusCode == 200) {
      /// print response body
      print("response body => ${response.body}");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      /// print error message
      print("error => ${response.statusCode}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("phone number or password is wrong")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signup screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.backspace),
        ),
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: SizedBox(
            width: 350,
            height: 600,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: SingleChildScrollView(
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
                        labelText: "name",
                        hintText: "enter your name",
                        prefix: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
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
                        labelText: "phone",
                        hintText: "enter your phone",
                        prefix: Icon(Icons.phone),
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
                    ElevatedButton(
                      onPressed: () {
                        print("signup pressed");
                        signup();
                      },
                      child: Text("signup"),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("already have account ?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                            print("login pressed");
                          },
                          child: Text("login"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
