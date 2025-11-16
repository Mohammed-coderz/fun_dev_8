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
        title: Text("welcome to our app"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Card(
            color: Colors.yellow,
            child: SizedBox(
              height: 350,
              width: 350,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("welcome to our app")],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("data"), Text("data")],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
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
      backgroundColor: Colors.yellow,
    );
  }
}
