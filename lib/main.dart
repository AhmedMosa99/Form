import 'dart:js';

import 'package:flutter/material.dart';
import 'package:form/Router/Router.dart';
import 'package:form/homePage.dart';
import 'package:form/setting.dart';
import 'package:form/widgit/Custmer_register_page.dart';
import 'package:form/widgit/merchant_reguster_page.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      'home': (context) => Home1(),
      'setting': (conntext) => Setting(),
    },
    navigatorKey: AppRouter.appRouter.navKey,
    onGenerateRoute: (RouteSettings routeSettings) {
      String name = routeSettings.name;
      String argument = routeSettings.arguments;
      if (name == "home") {
        return MaterialPageRoute(builder: (context) {
          return Home1();
        });
      } else if (name == "setting") {
return MaterialPageRoute(builder: (context){
          return Home1();
        });
      }
      else{
        return  MaterialPageRoute(builder: (context){
          return  Scaffold(
          body: Center(child: Text("error404"),),
        );
        });
       
      }
    },
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum UserType {
  custmer,
  merchant,
}

class _MyAppState extends State<MyApp> {
  TextEditingController textFeildName = TextEditingController();
  TextEditingController textFeildPassword = TextEditingController();
  String name;
  String password;
  var groupValue = UserType.custmer;
  bool check = false;
  bool show = true;
  bool toggle = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  setPassword(String password) {
    this.password = password;
  }

  setNAme(String name) {
    this.name = name;
  }

  saveForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    }
    return;
  }

  String validitName(String name) {
    if (name.isEmpty) {
      return "requrid Feild";
    }
  }

  String validitPassword(String password) {
    if (password.isEmpty && password.length > 6) {
      print("${this.name}and ${this.password}");
    } else {
      return "requrd feild";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    title: Text("custmer"),
                    value: UserType.custmer,
                    groupValue: groupValue,
                    onChanged: (v) {
                      groupValue = v;
                      setState(() {});
                    }),
              ),
              Expanded(
                child: RadioListTile(
                    title: Text("Merchant"),
                    value: UserType.merchant,
                    groupValue: groupValue,
                    onChanged: (v) {
                      groupValue = v;
                      toggle = false;
                      setState(() {});
                    }),
              ),
            ],
          ),
          groupValue == UserType.custmer ? CustmerPage() : MerchantPage(),
        ],
      ),
    );
  }
}
