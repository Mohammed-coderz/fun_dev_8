import 'package:flutter/material.dart';

import '../model/persons_model.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<PersonsModel> persons = [
    PersonsModel(name: "mohammed", age: 24, gender: "male"),
    PersonsModel(name: "ahmed", age: 25, gender: "male"),
    PersonsModel(name: "ali", age: 26, gender: "male"),
  ];

  List<String> names = ["mohammed", "ahmed", "ali", "mohammed", "ahmed", "ali"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Column(
                  children: [
                    Text("my name is : ${persons[index].name}"),
                    Text("my age is : ${persons[index].age}"),
                    Text("my gender is : ${persons[index].gender}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
