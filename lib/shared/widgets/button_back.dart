import 'package:flutter/material.dart';
import 'package:news_app/core/constants/assets.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(Assets.iconsPath + '/arrow-left.png')),
    );
  }
}
