import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';

import '../../core/constants/colors.dart';
import '../../res/styles.dart';

class NewsTag extends StatelessWidget {
  const NewsTag({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.faintGrey,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Text(news.source!.name!, style: Styles.inactiveTabText),
    );
  }
}
