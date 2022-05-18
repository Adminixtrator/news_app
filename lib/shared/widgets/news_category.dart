import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';

class NewsCategory extends StatefulWidget {
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
  State<NewsCategory> createState() => _NewsCategoryState();
}

class _NewsCategoryState extends State<NewsCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MSize.take(50),
        width: MSize.take(120),
        margin: const EdgeInsets.only(right: 30),
        child: ElevatedButton(
            onPressed: widget.onPressed,
            style: ButtonStyle(
                elevation: widget.active ? null : MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(
                    widget.active ? AppColors.black : AppColors.faintGrey
                        .withAlpha(
                        100)),
                animationDuration: const Duration(seconds: 0),
                shape: MaterialStateProperty.all<
                    RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          14),
                    )
                )),
            child: Text(widget.title,
              style: widget.active ? Styles.activeTabText : Styles
                  .inactiveTabText,)));
  }
}
