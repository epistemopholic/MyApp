import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to FLINK!"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              splashColor: Colors.deepPurpleAccent,
              child: Icon(
                Icons.logout,
              ),
              onTap: () {
                Navigator.pushNamed(context, "HomeScreen");
              },
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
