import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/widgit/Custom_textFeild.dart';

class MerchantPage extends StatefulWidget {
  @override
  _MerchantPage createState() => _MerchantPage();
}

class _MerchantPage extends State<MerchantPage> {
List<String> category = ['A', 'B', 'C', 'D'];
  String _selectedCategory;
    TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
    TextEditingController shopAddress = TextEditingController();
    TextEditingController shopName = TextEditingController();
     TextEditingController bio = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
         CustomTextFeild("name",name),
          CustomTextFeild("Password",pass),
            CustomTextFeild("ShopAddress",shopAddress),
       CustomTextFeild("ShopName",shopName),
       CustomTextFeild("Bio", bio),
              DropdownButton(
                
              hint: Text('Please choose a Category'), // Not necessary for Option 1
              value: _selectedCategory,
              onChanged: (newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
              items: category.map((p) {
                return DropdownMenuItem(
                  child: new Text(p),
                  value: p,
                );
              }).toList(),
            ),
          RaisedButton(
            onPressed: () {},
            child: Text("submit"),
          ),
        ],
      ),
    );
  }
}
