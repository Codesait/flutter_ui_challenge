import 'package:flutter/material.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/constants/colors.dart';
import 'package:flutter_ui_challengies/called_video_confrence_ui_design/widgets/background_widget.dart';
import 'package:flutter_ui_challengies/utils.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  call section

        const Expanded(
          flex: 4,
          child: Scaffold(
            appBar: CallAppBar(),
            body: CallBg(
              child: Center(
                child: Text('Meetings'),
              ),
            ),
          ),
        ),

        // chat section
        Expanded(
          flex: 2,
          child: Container(
            height: fullHeight(context),
            color: AppColors.black.withOpacity(0.9),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                decoration: const BoxDecoration(
                  color: AppColors.blackish,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: const Center(
                  child: Text('Meetings'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CallAppBar extends StatelessWidget with PreferredSizeWidget {
  const CallAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      leadingWidth: 100,
      elevation: 5,

      //leading logo
      leading: Hero(
        tag: 'splash_logo',
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),

      // title
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            // meeting title
            const Text(
              'Design Sprint Meeting',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            // spacer
            const SizedBox.square(
              dimension: 20,
            ),

            // meeting type bubble
            Container(
              height: 25,
              width: 80,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.people_rounded),
                    Text('Teams'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      centerTitle: false,
      actions: [
        Container(
          height: 70,
          padding: const EdgeInsets.only(top: 15),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/icons/layouts.png',
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}
