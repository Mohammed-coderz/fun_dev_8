import 'package:flutter/material.dart';
import 'package:fun_dev_8/screen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signup screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
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
