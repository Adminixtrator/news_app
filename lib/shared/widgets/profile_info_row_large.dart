import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/models/news_model.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';
import 'follow_button.dart';

class ProfileInfoRowLarge extends StatefulWidget {
  const ProfileInfoRowLarge({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  State<ProfileInfoRowLarge> createState() => _ProfileInfoRowLargeState();
}

class _ProfileInfoRowLargeState extends State<ProfileInfoRowLarge> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  height: MSize.take(55),
                  width: MSize.take(55),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.black
                          .withAlpha(50)
                  ),
                ),
                NSize.hW(15),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(text: widget.news.author! + '\n',
                          style: Styles.headline4),
                      TextSpan(text: 'Creator of Pepe',
                          style: Styles.infoText),
                    ]
                )),
              ]),
              const FollowButton(),
            ]));
  }
}
