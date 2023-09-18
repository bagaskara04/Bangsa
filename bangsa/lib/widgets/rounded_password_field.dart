import 'package:flutter/material.dart';
import 'package:bangsa/constant.dart';
import 'package:bangsa/widgets/widget.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: "Password",
            hintStyle: TextStyle(fontFamily: 'Ovo'),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
