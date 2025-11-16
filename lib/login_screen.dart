import 'package:flutter/material.dart';
import 'package:fun_dev_8/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            height: 450,
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
                  ElevatedButton(
                    onPressed: () {
                      print("login pressed");
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
