import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Please Enter Your name?',
        labelText: 'Name',
      ),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      validator: (String? value) {
        return (value != null && value.contains('@'))
            ? 'Do not use the @ char.'
            : null;
      },
    ));
  }
}
