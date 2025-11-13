import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mohammed sameer"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "please fill your email",
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  helperText: "email@example.com",
                ),
              ),
              SizedBox(height: 25),
              TextField(
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: "please fill your password",
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                      print(isPassword);
                    },
                    icon: isPassword
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  helperText: "Aa@12345",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
