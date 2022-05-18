import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {

  Color dC = AppColors.red;
  String dS = "Follow";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MSize.take(40),
      width: MSize.take(110),
      child: ElevatedButton(
        onPressed: _toggleFollowUser,
        style: ElevatedButton.styleFrom(
            primary: dC,
            elevation: 0.5,
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
            )
        ),
        child: Text(dS, style: dS == 'Follow' ? Styles.activeTabText : Styles
            .inactiveTabText),
      ),
    );
  }

  void _toggleFollowUser() {
    if (dS == "Follow") {
      setState(() {
        dC = AppColors.faintGrey;
        dS = "Following";
      });
    } else {
      setState(() {
        dC = AppColors.red;
        dS = "Follow";
      });
    }
  }
}
