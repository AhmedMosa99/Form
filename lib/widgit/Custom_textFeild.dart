import 'package:flutter/material.dart';

class CustomTextFeild extends StatefulWidget {
  String label;
  bool isPassword;
  TextEditingController controller = TextEditingController();
  CustomTextFeild(this.label, this.controller, [this.isPassword = false]);

  @override
  _CustomTextFeildState createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.all(15),
      child: TextField(
        obscureText:widget.isPassword? isObscure:false,
        controller: widget.controller,
        decoration: InputDecoration(
          suffix: Visibility(
            visible: widget.isPassword,
            child: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                isObscure = !isObscure;
                setState(() {
                });
              },
            ),
          ),
          filled: true,
          labelText: widget.label,
          fillColor: Colors.blue.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
