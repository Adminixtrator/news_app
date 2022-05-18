import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';
import '../../core/constants/colors.dart';
import '../../res/sizes.dart';
import '../../res/styles.dart';
import '../../utils/utils.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MSize.take(180),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
          vertical: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: AppColors.lineGrey!,
                  width: 1.0
              )
          )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: MSize.take(100),
            width: MSize.take(110),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(news.urlToImage!), fit: BoxFit.cover),
                color: AppColors.black.withAlpha(50),
                borderRadius: BorderRadius.circular(
                    15)
            ),
          ),
          NSize.hW(20),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width - MSize.take(170),
            child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: news.source!.name! + '\n',
                        style: Styles.categoryText,
                      ),
                      TextSpan(
                        text: Utils.subS(news.title!) +
                            '\n',
                        style: Styles.headline3,
                      ),
                      TextSpan(
                          text: Utils.timeAgoSinceDate(news.publishedAt!) +
                              Utils.tab(4) + '•' +
                              Utils.tab(4) + '10 min read',
                          style: Styles.footerText
                      ),
                    ]
                )),
          ),
        ],
      ),
    );
  }
}
