import 'package:flutter/material.dart';

class Nav {
  static popTo(dynamic context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
