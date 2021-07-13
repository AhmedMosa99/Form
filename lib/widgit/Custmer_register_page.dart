import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/Router/Router.dart';
import 'package:form/homePage.dart';
import 'package:form/widgit/Custom_textFeild.dart';

class CustmerPage extends StatefulWidget {
  @override
  _CustmerPageState createState() => _CustmerPageState();
}

class _CustmerPageState extends State<CustmerPage> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild("name", name),
        CustomTextFeild("Password", pass, true),
        RaisedButton(
          onPressed: () {
            AppRouter.appRouter.puchFunction(Home1());
          },
          child: Text("submit"),
        ),
      ],
    );
  }
}
