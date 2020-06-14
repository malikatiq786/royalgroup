import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {@required this.hintText, @required this.keyboard, this.enabled = true});
  final String hintText;
  final TextInputType keyboard;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        enabled: enabled,
        keyboardType: keyboard,
        onChanged: (value) {},
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          hintText: hintText,
          hintStyle: TextStyle(
            color: enabled ? Colors.black54 : Colors.black45,
          ),
          filled: true,
          isDense: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 1.0),
          ),
        ),
      ),
    );
  }
}
