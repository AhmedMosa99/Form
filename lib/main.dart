import 'package:flutter/material.dart';
import 'package:form/widgit/Custmer_register_page.dart';
import 'package:form/widgit/merchant_reguster_page.dart';

void main() {
  runApp(MaterialApp(
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
          Row(children: [
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
          ],),
         
              groupValue==UserType.custmer?CustmerPage():MerchantPage(),
        ],
      ),
    );
  }
}
