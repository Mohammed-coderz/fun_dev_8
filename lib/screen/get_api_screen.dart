import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiScreen extends StatefulWidget {
  const GetApiScreen({super.key});

  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}

class _GetApiScreenState extends State<GetApiScreen> {
  /// list for conatins data from api
  List data = [];

  /// initial state for get data from api
  @override
  void initState() {
    super.initState();
    fetchData();
    print("data l = ${data.length}");
  }

  /// method for get data from api and save it in data list
  fetchData() async {
    /// url for get data from api
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    /// response for get data from api
    final response = await http.get(url);
    print("response status code =>  ${response.statusCode}");
    print("response body =>  ${response.body}");

    /// check if response is success
    /// if success save data in data list
    if (response.statusCode == 200) {
      /// print response body
      print("response body => ${response.body}");

      /// decode response body to json
      setState(() {
        data = jsonDecode(response.body);

        /// print data list
        print("data => $data");
      });
    } else {
      /// print error message
      print("error => ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("get api"), centerTitle: true),
      body: ListView.separated(
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return data.isEmpty
              ? Center(child: Text("no data found"))
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Text("title : ${data[index]["title"]}"),
                        Divider(),
                        Text("body : ${data[index]["body"]}"),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
