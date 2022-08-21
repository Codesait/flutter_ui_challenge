import 'package:flutter/material.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/constants/colors.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/widgets/background_widget.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CallBg(
        child: Image.asset(
          'assets/images/logo.png',
          height: 40,
          width: 100,
        ),
      ),
    );
  }
}
