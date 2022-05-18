import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:news_app/core/models/news_model.dart';
import '../../core/constants/colors.dart';
import '../../res/sizes.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      FlutterShare.share(title: news.source!.name!, linkUrl: news.url);
    },
        splashColor: AppColors.transparent,
        highlightColor: AppColors.transparent,
        icon: Icon(
            Icons.share, size: MSize.take(27), color: AppColors.black));
  }
}
