import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/widgets/background_widget.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  CallBg(
        child: Center(
          child: Text('Meetings'),
        ),
      ),
    );
  }
}
