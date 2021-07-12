import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String name;
  String pass;
  Home({this.name, this.pass});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Name:$name"),
            Text("Password:$pass"),
          ],
        ),
      ),
    );
  }
}
