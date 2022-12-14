import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/constants/colors.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/screens/meeting.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/widgets/background_widget.dart';
import 'package:flutter_ui_challengies/utils.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Nav.popTo(
        context,
        const MeetingScreen(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CallBg(
        child: SizedBox(
          height: fullHeight(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Hero(
                tag: 'splash_logo',
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 450),
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),

              // loading widget
              Flexible(
                child: LoadingAnimationWidget.inkDrop(
                  color: AppColors.lightPurple,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
