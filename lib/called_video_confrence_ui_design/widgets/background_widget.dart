import 'dart:ui';

import 'package:aurora/aurora.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/constants/colors.dart';
import 'package:flutter_ui_challengies/utils.dart';

class CallBg extends StatelessWidget {
  const CallBg({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fullHeight(context),
      width: fullWidth(context),
      child: Stack(
        children: [
          Container(
            color: AppColors.black,
          ),
          const Positioned(
            top: 70,
            left: -100,
            child: Aurora(
              size: 800,
              colors: AppColors.bgGradient,
              blur: 900,
            ),
          ),
          SizedBox(
            height: fullHeight(context),
            width: fullWidth(context),
            child: child,
          ),
        ],
      ),
    );
  }
}
