import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';
import '../../res/styles.dart';
import '../../utils/utils.dart';
import 'news_tag.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NewsTag(news: news),
        Text(Utils.tab(2) + '•' + Utils.tab(2) + '6 min read' +
            Utils.tab(2) + '•' +
            Utils.tab(2) + Utils.timeAgoSinceDate(news.publishedAt!),
            style: Styles.infoText)
      ],
    );
  }
}
