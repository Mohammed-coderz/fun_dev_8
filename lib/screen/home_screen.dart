import 'package:flutter/material.dart';
import 'package:fun_dev_8/screen/gridview_screen.dart';
import 'package:fun_dev_8/screen/items_screen.dart';
import 'package:fun_dev_8/screen/list_view_screen.dart';
import 'package:fun_dev_8/feature/login/view/login_screen.dart';
import 'package:fun_dev_8/screen/notes_screen.dart';

import '../feature/login2/view/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 1;
  List<Widget> screens = [
    ListViewScreen(),
    ItemsScreen(),
    GridviewScreen(),
    NotesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(child: Text('Drawer Header')),
            ),
            ListTile(
              title: Text("home"),
              onTap: () {},
              trailing: Icon(Icons.call_end_sharp),
              subtitle: Text("data"),
              leading: Icon(Icons.home),
            ),
            ListTile(title: Text("profile"), onTap: () {}),
            ExpansionTile(
              title: Text("setting"),
              children: [
                ListTile(title: Text("change password"), onTap: () {}),
                ListTile(title: Text("change lang"), onTap: () {}),
              ],
            ),
            ListTile(
              title: Text("logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "setting",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            label: "notes",
            backgroundColor: Colors.deepPurple,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.abc),
          //   label: "setting",
          //   backgroundColor: Colors.amber,
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      //   },
      //   child: Text("data"),
      // ),
    );
  }
}
