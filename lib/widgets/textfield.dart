import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFiled extends StatefulWidget {
  final TextEditingController controler;
  final String title;
  final IconData prefixIcon;
  final Widget? sufixIcon;
  final Function(String)? callback;
  final TextInputType textInput;
  final bool obscure;
  final bool enabled;
  const CustomTextFiled(
      {super.key,
      required this.controler,
      required this.title,
      this.sufixIcon,
      required this.prefixIcon,
      this.callback,
      required this.obscure,
      required this.textInput, 
      required this.enabled});

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextField(
        onChanged: widget.callback,
        controller: widget.controler,
        enabled: widget.enabled,
        obscureText: widget.obscure,
        keyboardType: widget.textInput,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold
          ),
          border: InputBorder.none,
          label: Text('${widget.title}'),
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.sufixIcon,
        ),
      ),
    );
  }
}
