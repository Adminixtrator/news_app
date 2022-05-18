import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/shared/widgets/follow_button.dart';
import 'package:news_app/ui/profile/profile.dart';
import 'package:news_app/utils/navigator.dart';

import '../../core/constants/colors.dart';
import '../../core/models/news_model.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';

class ProfileInfoRow extends StatefulWidget {
  const ProfileInfoRow({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  State<ProfileInfoRow> createState() => _ProfileInfoRowState();
}

class _ProfileInfoRowState extends State<ProfileInfoRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween,
      children: [
        Row(
            children: [
              GestureDetector(
                  onTap: () {
                    AppNavigator.route = WriterProfile(news: widget.news);
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Container(
                    height: MSize.take(50),
                    width: MSize.take(50),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.black
                            .withAlpha(50)
                    ),
                  )),
              NSize.hW(15),
              RichText(text: TextSpan(
                  children: [
                    TextSpan(text: widget.news.author! + '\n',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AppNavigator.route =
                                WriterProfile(news: widget.news);
                            Navigator.pushNamed(context, '/profile');
                          },
                        style: Styles.smallText2),
                    TextSpan(text: 'Author',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AppNavigator.route =
                                WriterProfile(news: widget.news);
                            Navigator.pushNamed(context, '/profile');
                          },
                        style: Styles.footerText2),
                  ]
              )),
            ]),
        const FollowButton(),
      ],
    );
  }
}
