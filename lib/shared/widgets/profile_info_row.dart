import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';

class ProfileInfoRow extends StatefulWidget {
  const ProfileInfoRow({Key? key}) : super(key: key);

  @override
  State<ProfileInfoRow> createState() => _ProfileInfoRowState();
}

class _ProfileInfoRowState extends State<ProfileInfoRow> {

  Color dC = AppColors.red;
  String dS = "Follow";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween,
      children: [
        Row(
            children: [
              Container(
                height: MSize.take(50),
                width: MSize.take(50),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.black
                        .withAlpha(50)
                ),
              ),
              NSize.hW(15),
              RichText(text: TextSpan(
                  children: [
                    TextSpan(text: 'Alisa Manson\n',
                        style: Styles.smallText2),
                    TextSpan(text: 'Author',
                        style: Styles.footerText2),
                  ]
              )),
            ]),
        SizedBox(
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
        )
      ],
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
