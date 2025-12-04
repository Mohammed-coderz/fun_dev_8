import 'package:flutter/material.dart';

class FloatActionScreen extends StatefulWidget {
  const FloatActionScreen({super.key});

  @override
  State<FloatActionScreen> createState() => _FloatActionScreenState();
}

class _FloatActionScreenState extends State<FloatActionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
