import 'package:flutter/material.dart';
import 'package:news_app/core/constants/assets.dart';
import 'package:news_app/core/constants/colors.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle
        ),
        child: IconButton(
            onPressed: () {},
            iconSize: 20,
            color: AppColors.white,
            padding: const EdgeInsets.all(0),
            constraints: const BoxConstraints(maxHeight: 36),
            icon: Image.asset(Assets.iconsPath + '/link.png', height: 20,)));
  }
}
