import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({
    Key? key,
    required this.active,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final bool active;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MSize.take(50),
        width: MSize.take(120),
        margin: const EdgeInsets.only(right: 30),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              elevation: active ? null : MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(
                    active ? AppColors.black : const Color(0xFFD4D4D4).withAlpha(100)),
                shape: MaterialStateProperty.all<
                    RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          14),
                    )
                )),
            child: Text(title, style: active ? Styles.activeTabText : Styles.inactiveTabText,)));
  }
}
