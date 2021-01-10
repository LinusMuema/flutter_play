import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RoundedInput extends StatefulWidget {
  final String hint;
  final Icon icon;
  const RoundedInput(this.hint, this.icon);

  @override
  _RoundedInputState createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(50)),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextFormField(
        obscureText: widget.hint.contains('password'),
        decoration: new InputDecoration(
            prefixIcon: widget.icon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            hintText: widget.hint),
        cursorHeight: 17,
      ),
      constraints: BoxConstraints.tightForFinite(width: 500, height: 50),
    );
  }
}
