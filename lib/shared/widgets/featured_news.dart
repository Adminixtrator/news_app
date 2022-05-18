import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/news/news.dart';
import 'package:news_app/utils/navigator.dart';
import 'package:page_transition/page_transition.dart';

import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';
import '../../ui/profile/profile.dart';
import 'link_button.dart';

class FeaturedNews extends StatelessWidget {
  const FeaturedNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          AppNavigator.route = const News();
          Navigator.pushNamed(context, '/news');
        },
        child: Container(
          height: MSize.take(300),
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.lineGrey!,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Container(
                height: MSize.take(170),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.black.withAlpha(50),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                ),
                alignment: Alignment.topRight,
                child: const LinkButton(),
              ),
              Container(
                height: MSize.take(128),
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Text(
                          "10 Things in Tech: Leaked startup data",
                          style: Styles.headline2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Row(children: [
                            GestureDetector(
                                onTap: () {
                                  AppNavigator.route = const WriterProfile();
                                  Navigator.pushNamed(context, '/profile');
                                },
                                child: Container(
                                  height: MSize.take(40),
                                  width: MSize.take(40),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.black
                                          .withAlpha(50)
                                  ),
                                )),
                            NSize.hW(15),
                            RichText(
                                text: TextSpan(
                                    text: "Alisa Manson",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        AppNavigator.route =
                                        const WriterProfile();
                                        Navigator.pushNamed(
                                            context, '/profile');
                                      },
                                    style: Styles.smallText)),
                          ]),
                          const Text("2 min ago"),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
