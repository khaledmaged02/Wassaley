import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final String hintTixtt;
  final bool isPassword;
  final TextInputType textInType;

  const MyTextfield({
    Key? key,
    required this.hintTixtt,
    required this.isPassword,
    required this.textInType,
  }) : super(key: key);

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      keyboardType: widget.textInType,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hintTixtt,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 255, 82, 82),
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}