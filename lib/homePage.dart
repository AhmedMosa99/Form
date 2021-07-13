import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  String name;
  String pass;
  Home1({this.name, this.pass});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name:$name"),
              Text("Password:$pass"),
              ElevatedButton(onPressed: ()async{
                  Navigator.of(context).pop("ahmed");
              }, child: Text("singnOut"),)
            ],
          ),
        ),
      ),
    );
  }
}
